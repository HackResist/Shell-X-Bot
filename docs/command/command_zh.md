# 👉命令详细说明及示例👈

## 📝 创建文件
`/createfile C:\Users\Down\Documents\notes.txt Hello, World!`

在指定路径创建一个名为 notes.txt 的文件，内容为 `Hello, World!`

**用法：** 在指定路径创建新文件，并插入给定内容。如果文件已存在，则会覆盖。

## 🗑️ 删除文件
`/removefile C:\Users\Down\Documents\notes.txt`

删除指定路径下的 notes.txt 文件。

## 📂 文件列表
`/listfiles C:\Users\Lokesh\Documents`

**用法：** 列出指定目录路径下的所有文件，以便检查可用的文件。

## 🔐 登出
`/logoff`

**用法：** 从当前 Windows 会话中登出。

## 💬 显示自定义消息
`/showmessage "This is a custom alert message."`

**用法：** 显示一个包含用户提供的自定义消息的对话框。

## 🔒 锁定计算机
`/lockcomputer`

**用法：** 锁定计算机，必须重新登录才能访问系统。

## ⏳ 关机
- `/shutdown 60` : 在指定时间（60秒）后关机。

- `/shutdown` : 立即关机。

## 🔄 重启计算机
`/restart`

**用法：** 关闭所有应用程序和进程并重启计算机。

## 💻 系统信息
`/sysinfo`

**用法：** 检查系统操作系统的构建年份和版本号。

## 📁 当前目录
`/getcurrentdir`

**用法：** 获取文件所在的当前目录。

## 🖥️ 硬件信息
`/gethardwareinfo`

**用法：** 检查计算机的硬件信息，例如制造商和型号。

## 📝 命令历史
`/gethistory`

**用法：** 查看当前 PowerShell 会话中执行的命令历史。

## 🧹 清除命令历史
`/clearhistory`

**用法：** 清除当前 PowerShell 会话中的命令历史。

## 📊 检查电池、CPU、RAM 和网络状态
`/getsystemstatus`

**用法：** 检查电池状态、CPU 使用率、RAM 使用率和网络连接状态。

## 🌐 检查公共 IP 地址
`/getip`

**用法：** 获取并显示当前网络的外部 IP 地址。

## 🔌 检查连接的硬件信息
`/getdevices`

**用法：** 列出连接的硬件设备（例如 USB 设备、键盘、麦克风）。

## 📋 列出所有正在运行的应用程序
`/getopenedapplications`

**用法：** 列出系统中当前打开的所有应用程序。

## ⏱️ 检查系统正常运行时间
`/getuptime`

**用法：** 显示自上次启动以来系统正常运行的时间。

## 💾 连接存储设备的详细信息
`/getstoragedetails`

**用法：** 检查连接存储设备的使用和可用空间等信息。

## 📄 检查指定文件的内容
`/getfilecontent C:\Users\Down\Documents\example.txt`

**用法：** 获取并显示指定路径下文件的内容。

## 🛠️ 运行指定路径的文件
`/runfile C:\Users\YourName\Documents\example.txt`

**用法：** 使用默认应用程序打开该文件。

## ❌ 根据进程 ID 或名称终止正在运行的进程
`/killprocess notepad` 或 `/killprocess 1243`

**用法：** 根据进程 ID 或名称终止正在运行的进程。

其中 `1243` 是应用程序或进程的进程 ID。

## ▶️ 执行可执行文件并传递可选参数
`/runprocess C:\windows\notepad.exe C:\User\Down\Document\Hello.txt`

**用法：** 执行可执行文件，并可以选择性地传递参数或文件路径。
