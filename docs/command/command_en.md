# 👉Detailed Explaination of Command With Examples👈

## 📝 Create a File
`/createfile C:\Users\Down\Documents\notes.txt Hello, World!`

Creates a file called notes.txt in the specified path with the content `Hello, World!`.

**Use:** Creates a new file at the specified path with the given content. If the file already exists, it will be overwritten.
## 🗑️ Remove a File
`/removefile C:\Users\Down\Documents\notes.txt`

Removes the notes.txt file from the specified path.

## 📂 List Files
`/listfiles C:\Users\Lokesh\Documents`

**Use:** Lists all files present in the specified directory path, allowing you to see what's available.

## 🔐 Log off
`/logoff`

**Use:** Logs off the current user from the Windows session.

## 💬 Display a custom message
`/showmessage "This is a custom alert message."`

**Use:** Displays a dialog box with a custom message provided by the user.

## 🔒 Lock computer
`/lockcomputer`

**Use:** Locks the computer, requiring the user to log in again to access the system.
## ⏳Shutdown computer
 - `/shutdown 60` : Shuts down the computer after an optional delay specified in seconds(60).
   
 - `/shutdown` : Shuts-Down the computer immediately.

## 🔄 Restart computer

`/restart` 

**Use:** Restarts the computer, closing all applications and processes.

## 💻 System information
`/sysinfo`

**Use:** Get System OS Build Year and no.

## 📁 Current directory

`/getcurrentdir` 

**Use:** Get current directory where file is present.

## 🖥️  Hardware information
`/gethardwareinfo`

**Use:** Fetches details about the computer's hardware, including manufacturer, model.

##  📝 Command history

`/gethistory`

**Use:** Retrieves the history of commands executed in the current PowerShell session.

## 🧹 Clear Command History
`/clearhistory`

**Use:** Clears the command history from the current PowerShell session.

## 📊 Get Battery, CPU, RAM, and Network Status

`/getsystemstatus`

**Use:** Retrieves current status of battery, CPU usage, RAM usage, and network connectivity.

## 🌐 Get Public IP

`/getip`

**Use:** Fetches and displays the external IP address of the current network.


## 🔌 Retrieve connected hardware information

`/getdevices`

**Use:** Lists all connected hardware devices (e.g., USB devices, keyboards, mic).

## 📋 List All Opened Applications

`/getopenedapplications`


**Use:** Lists all applications currently open on the system.

## ⏱️ Get System Uptime

`/getuptime`

**Use:** Displays the duration for which the system has been running since the last boot.

## 💾 Details of Connected Storage

`/getstoragedetails`

**Use:** Retrieves and displays information about connected storage devices, including used and free space.

## 📄 Retrieve the Content of a Specified File

`/getfilecontent C:\Users\Down\Documents\example.txt`

**Use:** Fetches and displays the content of the file located at the specified path.


## 🛠️ Execute a File by Specifying the Path

`/runfile C:\Users\YourName\Documents\example.txt`

**Use:** Opens the specified file using its default associated application.

## ❌ Kill a Running Process by ID or Name

`/killprocess notepad`  or `/killprocess 1243`

**Use:** Terminates a running process identified by its process ID or name.

Here is `1243` is process ID of application or process.

## ▶️ Run an Executable File with Optional Arguments

`/runprocess C:\windows\notepad.exe C:\User\Down\Document\Hello.txt`

**Use:** Executes an executable file and can include optional arguments or file paths to be passed to the executable.









