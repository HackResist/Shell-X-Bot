# Shell-X-Bot🤖
## 概述
这个机器人允许用户通过 Telegram 执行各种命令，以利用 PowerShell 的功能来管理 Windows 环境。

>⭐ 如果这个项目对你有帮助，请给我们一个星星！

## 🚀 功能
- **命令执行：** 通过 Telegram 与 Windows 系统互动的命令执行。
- **文件管理：** 创建、删除和查看系统文件。
- **系统信息：** 检查系统状态、硬件信息和当前目录。
- **用户互动：** 发送欢迎消息并帮助用户更轻松地处理命令。
- **远程控制：** 远程注销、锁定、重启或关闭计算机。

## 📦 先决条件
在开始之前，请确保以下内容：
- Windows 操作系统
- 可以在 Telegram 中接收通知的机器人
- 安装所需的 PowerShell 模块：
  - `Microsoft.PowerShell.Security`
  - `Microsoft.PowerShell.Utility`
  - `NetworkConnectivityStatus`
  - `NetworkSwitchManager`

## ⚙️ 安装
1. **克隆仓库：**
    `git clone https://github.com/HackResist/Shell-X-Bot.git`

2. **设置机器人：** 前往 `bot-father` 创建机器人并通过 `get chat id` 获取聊天 ID。
3. **设置机器人令牌和聊天 ID：**  打开脚本，将 $botToken 和 $chatID 替换为 Telegram 机器人令牌和聊天 ID。

4. **调整执行策略：** 在 PowerShell 中运行以下命令以允许脚本执行：
```Set-ExecutionPolicy RemoteSigned -Scope Process -Force```
5. **运行脚本：** 在 PowerShell 终端运行脚本：`.\path-of-script\YourScriptName.ps1`

## 🛠️ 可用命令
- `/start`:👋 显示命令消息。

- `/createfile <file_path> <content>`: 📝 使用指定内容创建文件。

- `/removefile <file_path>`:🗑️ 删除指定文件。

- `/listfiles <Directory_path>`: 📂 检查指定目录的文件列表。

- `/logoff`:🔐 注销当前用户。

- `/showmessage <content>`:💬 在对话框中显示自定义消息。

- `/lockcomputer`: 🔒 锁定计算机。

- `/shutdown [delay]`: ⏳ 设置延迟时间关闭计算机。

- `/restart`:🔄 重启计算机。

- `/sysinfo`:💻 检查系统信息。

- `/getcurrentdir`:📁 检查 PowerShell 脚本文件所在的当前目录。

- `/gethardwareinfo`:🖥️ 获取硬件信息。

- `/gethistory`:📝 获取命令历史记录。

- `/clearhistory`: 🧹 删除命令历史记录。

- `/getsystemstatus`: 📊 获取电池、CPU、RAM、网络状态。

- `/getip`: 🌐 获取外部 IP 地址。

- `/getdevices`:🔌 获取连接的硬件信息。

- `/getopenedapplications`:📋 检查正在运行的应用程序列表。

- `/getuptime`: ⏱️ 检查系统运行时间。

- `/getstoragedetails`: 💾 检查连接的存储设备信息。

- `/getfilecontent <file_path>`:📄 获取指定文件的内容。

- `/runfile <file_path>`:🛠️ 指定路径运行文件。

- `/killprocess <process_id | application_name>`:❌ 通过 ID 或名称终止正在运行的进程。

- `/runprocess <exe_path> [File_path]`:▶️ 带可选参数运行可执行文件。

## 📋 详细命令说明
如果您对命令的使用有任何疑问，请参考 [命令列表](/docs/command/command_zh.md) 和示例文件。

## 🤝 贡献
欢迎任何贡献！如果您有改进或新增功能的建议，请先 Fork 仓库并提交 Pull Request。

## 📜 许可证
该项目根据 MIT 许可证提供。有关详细信息，请参见 [LICENSE](/./LICENSE) 文件。

## 📞 支持
如果您有任何疑问或需要支持，请通过 **[Twitter](https://x.com/dev_lokesh_)**、**[LinkedIn](https://www.linkedin.com/in/lokeshchauhanapex/)** 或在 GitHub 仓库中创建问题与我们联系。
