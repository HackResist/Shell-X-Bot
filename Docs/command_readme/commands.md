# 📚 Shell-X Bot Commands Documentation

This document provides detailed information about all available commands in the Shell-X Bot. Commands are categorized by risk level and functionality.

## 🔴 High Risk Commands (System Control)

These commands can significantly affect system operation and should be used with extreme caution.

### System Control Commands

#### 🔒 `/lockcomputer`
- **Description**: Locks the computer screen
- **Usage**: `/lockcomputer`
- **Example**: `/lockcomputer`
- **Risk Level**: High
- **Requirements**: Administrative privileges
- **Note**: Immediately locks the computer screen, requiring password to unlock

#### 👤 `/logoff`
- **Description**: Logs off the current user
- **Usage**: `/logoff`
- **Example**: `/logoff`
- **Risk Level**: High
- **Requirements**: Administrative privileges
- **Note**: Closes all user applications and logs off the current user

#### ⚡ `/shutdown`
- **Description**: Shuts down the computer
- **Usage**: 
  - `/shutdown` - Immediate shutdown
  - `/shutdown <seconds>` - Shutdown after specified seconds
- **Example**: 
  - `/shutdown` (immediate)
  - `/shutdown 60` (shutdown after 60 seconds)
- **Risk Level**: High
- **Requirements**: Administrative privileges
- **Note**: Can be cancelled within the specified time using standard Windows shutdown cancellation

#### 🔄 `/restart`
- **Description**: Restarts the computer
- **Usage**: `/restart`
- **Example**: `/restart`
- **Risk Level**: High
- **Requirements**: Administrative privileges
- **Note**: Performs a full system restart

#### 💬 `/showmessage <content>`
- **Description**: Displays a custom message dialog
- **Usage**: `/showmessage "Your message here"`
- **Example**: `/showmessage "System maintenance in 5 minutes"`
- **Risk Level**: High
- **Requirements**: Administrative privileges
- **Note**: Shows a system dialog with the specified message

#### ⚰️ `/killprocess <process_id> | <application_name>`
- **Description**: Terminates a running process
- **Usage**: 
  - `/killprocess 1234` (by PID)
  - `/killprocess notepad` (by name)
- **Example**: 
  - `/killprocess 1234`
  - `/killprocess chrome`
- **Risk Level**: High
- **Requirements**: Administrative privileges
- **Note**: Forcefully terminates the specified process

#### 🚀 `/runprocess <exe_path> [args]`
- **Description**: Runs a process or executable
- **Usage**: `/runprocess "C:\path\to\program.exe" "arguments"`
- **Example**: `/runprocess "C:\Program Files\Notepad++\notepad++.exe" "C:\test.txt"`
- **Risk Level**: High
- **Requirements**: Administrative privileges
- **Note**: Can execute any program with specified arguments

## 🟡 Medium Risk Commands (File Operations)

These commands can modify files and data on the system.

### File Management Commands

#### 📝 `/createfile <file_path> <content>`
- **Description**: Creates a new file with specified content
- **Usage**: `/createfile "C:\path\to\file.txt" "file content"`
- **Example**: `/createfile "C:\Users\Desktop\test.txt" "Hello, World!"`
- **Risk Level**: Medium
- **Requirements**: Write permissions
- **Note**: Creates new file or overwrites existing one

#### 🗑️ `/removefile <file_path>`
- **Description**: Deletes a specified file
- **Usage**: `/removefile "C:\path\to\file.txt"`
- **Example**: `/removefile "C:\Users\Desktop\old_file.txt"`
- **Risk Level**: Medium
- **Requirements**: Delete permissions
- **Note**: Permanently deletes the specified file

#### 📂 `/listfiles <directory_path>`
- **Description**: Lists all files in a directory
- **Usage**: `/listfiles "C:\path\to\directory"`
- **Example**: `/listfiles "C:\Users\Documents"`
- **Risk Level**: Medium
- **Requirements**: Read permissions
- **Note**: Shows files and subdirectories

#### 📤 `/sendfile <file_path>`
- **Description**: Sends a file to Telegram
- **Usage**: `/sendfile "C:\path\to\file.txt"`
- **Example**: `/sendfile "C:\Users\Desktop\report.pdf"`
- **Risk Level**: Medium
- **Requirements**: Read permissions
- **Note**: File size limit applies based on Telegram's restrictions

#### ⬇️ `/download <url> <save_path>`
- **Description**: Downloads a file from the internet
- **Usage**: `/download "https://example.com/file.txt" "C:\path\to\save.txt"`
- **Example**: `/download "https://example.com/document.pdf" "C:\Users\Downloads\document.pdf"`
- **Risk Level**: Medium
- **Requirements**: Write permissions
- **Note**: Supports HTTP and HTTPS URLs

#### 📄 `/getfilecontent <file_path>`
- **Description**: Retrieves content of a file
- **Usage**: `/getfilecontent "C:\path\to\file.txt"`
- **Example**: `/getfilecontent "C:\Users\Desktop\config.txt"`
- **Risk Level**: Medium
- **Requirements**: Read permissions
- **Note**: Returns file content as text

#### ▶️ `/runfile <file_path>`
- **Description**: Executes a file
- **Usage**: `/runfile "C:\path\to\program.exe"`
- **Example**: `/runfile "C:\Program Files\VLC\vlc.exe"`
- **Risk Level**: Medium
- **Requirements**: Execute permissions
- **Note**: Can run any executable file

## 🟢 Low Risk Commands (Information Gathering)

These commands only retrieve information and don't modify the system.

### System Information Commands

#### 💻 `/sysinfo`
- **Description**: Displays system information
- **Usage**: `/sysinfo`
- **Example**: `/sysinfo`
- **Risk Level**: Low
- **Requirements**: None
- **Note**: Shows OS version, architecture, and basic system details

#### 📁 `/getcurrentdir`
- **Description**: Shows current working directory
- **Usage**: `/getcurrentdir`
- **Example**: `/getcurrentdir`
- **Risk Level**: Low
- **Requirements**: None
- **Note**: Displays full path of current directory

#### 🔧 `/gethardwareinfo`
- **Description**: Retrieves detailed hardware information
- **Usage**: `/gethardwareinfo`
- **Example**: `/gethardwareinfo`
- **Risk Level**: Low
- **Requirements**: None
- **Note**: Shows CPU, RAM, and other hardware details

#### 📜 `/gethistory`
- **Description**: Shows command history
- **Usage**: `/gethistory`
- **Example**: `/gethistory`
- **Risk Level**: Low
- **Requirements**: None
- **Note**: Displays recent command history

#### 🧹 `/clearhistory`
- **Description**: Clears command history
- **Usage**: `/clearhistory`
- **Example**: `/clearhistory`
- **Risk Level**: Low
- **Requirements**: None
- **Note**: Removes all command history entries

#### 📊 `/getsystemstatus`
- **Description**: Shows system status
- **Usage**: `/getsystemstatus`
- **Example**: `/getsystemstatus`
- **Risk Level**: Low
- **Requirements**: None
- **Note**: Displays battery, CPU, RAM, and network status

#### 🌐 `/getip`
- **Description**: Shows IP address information
- **Usage**: `/getip`
- **Example**: `/getip`
- **Risk Level**: Low
- **Requirements**: None
- **Note**: Displays both local and public IP addresses

#### 🔌 `/getHardwaredevices`
- **Description**: Lists all hardware devices
- **Usage**: `/getHardwaredevices`
- **Example**: `/getHardwaredevices`
- **Risk Level**: Low
- **Requirements**: None
- **Note**: Shows detailed information about connected devices

#### 📱 `/getopenedapplications`
- **Description**: Lists running applications
- **Usage**: `/getopenedapplications`
- **Example**: `/getopenedapplications`
- **Risk Level**: Low
- **Requirements**: None
- **Note**: Shows all currently running applications

#### ⏱️ `/getuptime`
- **Description**: Shows system uptime
- **Usage**: `/getuptime`
- **Example**: `/getuptime`
- **Risk Level**: Low
- **Requirements**: None
- **Note**: Displays how long the system has been running

#### 💾 `/getstoragedetails`
- **Description**: Shows storage information
- **Usage**: `/getstoragedetails`
- **Example**: `/getstoragedetails`
- **Risk Level**: Low
- **Requirements**: None
- **Note**: Displays disk space and storage details

## 🔵 Utility Commands

### 🏁 `/start`
- **Description**: Shows welcome message and command list
- **Usage**: `/start`
- **Example**: `/start`
- **Risk Level**: None
- **Requirements**: None
- **Note**: Displays initial welcome message and available commands

### ❓ `/help`
- **Description**: Shows help information and repository link
- **Usage**: `/help`
- **Example**: `/help`
- **Risk Level**: None
- **Requirements**: None
- **Note**: Provides link to the project repository

## ⚠️ Important Notes

1. All commands are rate-limited to prevent abuse
2. Some commands may require administrative privileges
3. File operations are restricted to authorized paths
4. System commands should be used with extreme caution
5. Always verify file paths and commands before execution

## 🔒 Security Recommendations

1. Use the bot only in trusted environments
2. Regularly update the bot to the latest version
3. Monitor command usage and system changes
4. Implement proper access controls
5. Keep your Telegram bot token and chat id  secure 