# Download Commands

function Process-DownloadCommands {
    param (
        [string[]]$parts
    )
    
    switch ($parts[0]) {
        "/download" {
            if ($parts.Length -lt 3) {
                Send-TelegramMessage -message "Usage: /download <url> <save_path>"
                return
            }

            $url = $parts[1]
            $savePath = $parts[2..($parts.Length - 1)] -join " "

            try {
                # Validate URL
                if (-not ($url -match '^https?://')) {
                    Send-TelegramMessage -message "Invalid URL format. Please provide a valid HTTP/HTTPS URL."
                    return
                }

                # Create directory if it doesn't exist
                $directory = Split-Path -Path $savePath -Parent
                if (-not (Test-Path -Path $directory)) {
                    New-Item -Path $directory -ItemType Directory -Force | Out-Null
                    Send-TelegramMessage -message "Created directory: $directory"
                }

                # Check if file already exists
                if (Test-Path -Path $savePath -PathType Leaf) {
                    Send-TelegramMessage -message "File already exists at: $savePath`nDo you want to overwrite it? Reply with 'yes' to confirm or 'no' to cancel."
                    
                    # Wait for confirmation
                    $confirmationReceived = $false
                    $startTime = Get-Date
                    $timeout = 30 # seconds
                    
                    while (-not $confirmationReceived -and ((Get-Date) - $startTime).TotalSeconds -lt $timeout) {
                        $updates = Get-TelegramUpdates $script:lastUpdateId
                        foreach ($update in $updates) {
                            $script:lastUpdateId = $update.update_id + 1
                            if ($update.message -and $update.message.text) {
                                $response = $update.message.text.ToLower()
                                if ($response -eq 'yes') {
                                    $confirmationReceived = $true
                                    Send-TelegramMessage -message "Proceeding with file overwrite..."
                                    break
                                }
                                elseif ($response -eq 'no') {
                                    $confirmationReceived = $true
                                    Send-TelegramMessage -message "Download cancelled."
                                    return
                                }
                            }
                        }
                        Start-Sleep -Seconds 1
                    }
                    
                    if (-not $confirmationReceived) {
                        Send-TelegramMessage -message "Download timed out. Please try again."
                        return
                    }
                }

                # Start download
                Send-TelegramMessage -message "Starting download from: $url`nSaving to: $savePath"
                
                # Create WebClient
                $webClient = New-Object System.Net.WebClient
                
                # Download the file synchronously
                try {
                    $webClient.DownloadFile($url, $savePath)
                    
                    # Get file information after successful download
                    $file = Get-Item $savePath
                    $size, $unit = Get-FileSize -filePath $savePath
                    $fileInfo = @"
Download completed successfully!

File Information:
   Name: $($file.Name)
   Size: $size $unit
   Created: $($file.CreationTime)
   Modified: $($file.LastWriteTime)
   Location: $savePath
"@
                    Send-TelegramMessage -message $fileInfo
                }
                catch {
                    Send-TelegramMessage -message "Download failed: $_"
                }
            }
            catch {
                Send-TelegramMessage -message "Error downloading file: $_"
            }
            finally {
                if ($webClient) {
                    $webClient.Dispose()
                }
            }
        }
    }
} 