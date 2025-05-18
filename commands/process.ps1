# Process Management Commands

function Process-ProcessCommands {
    param (
        [string[]]$parts
    )
    
    switch ($parts[0]) {
        "/killprocess" {
            if ($parts.Length -ge 2) {
                $processIdentifier = $parts[1]
                try {
                    if ([int]::TryParse($processIdentifier, [ref]$null)) {
                        Stop-Process -Id $processIdentifier -Force
                        Send-TelegramMessage -message "Process with ID '$processIdentifier' has been terminated."
                    } else {
                        Stop-Process -Name $processIdentifier -Force -ErrorAction Stop
                        Send-TelegramMessage -message "Process '$processIdentifier' has been terminated."
                    }
                } catch {
                    Send-TelegramMessage -message "Error: Unable to terminate process '$processIdentifier'. It may not be running."
                }
            } else {
                Send-TelegramMessage -message "Usage: /killprocess <processNameOrID>"
            }
        }
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
    }
} 