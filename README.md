# 🚀 Shell-X Bot

<div align="center">

![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white)
![Telegram](https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg?style=for-the-badge)](https://github.com/hackresist/Shell-X-bot)

</div>

## 📝 Description

Shell-X Bot is a powerful Telegram bot that enables remote management of Windows systems through PowerShell commands. It provides a secure and efficient way to monitor and control your system remotely, with features ranging from basic system information gathering to advanced system control operations.

## ⚠️ Disclaimer

**IMPORTANT: This tool is provided for educational and legitimate system administration purposes only. The authors and contributors are not responsible for any misuse or damage caused by this software. Users are solely responsible for their actions and must ensure compliance with all applicable laws and regulations.**

## 🛠️ Project Structure

```
Shell-X-bot/
├── commands/
│   ├── download.ps1      # Download management commands
│   ├── file_comm.ps1     # Basic file operations
│   ├── file_transf.ps1   # File transfer operations
│   ├── process.ps1       # Process management
│   └── system.ps1        # System control commands
├── utils/
│   └── telegram.ps1      # Telegram API integration
├── config.ps1            # Configuration settings
└──main.ps1             # Main bot script

```

## 🚀 Features

- 🔒 **System Control**
  - Lock/Unlock Computer
  - Shutdown/Restart
  - Process Management
  - System Status Monitoring

- 📁 **File Operations**
  - File Creation/Deletion
  - Directory Listing
  - File Content Reading
  - File Transfer

- 📊 **System Information**
  - Hardware Information
  - System Status
  - Network Information
  - Storage Details

- 🔄 **Process Management**
  - Process Control
  - Application Management
  - System Resource Monitoring

- 📤 **File Transfer**
  - Telegram File Transfer
  - Download Management
  - File Content Sharing

## 🚀 Getting Started

### Prerequisites

- Windows Operating System
- PowerShell 5.1 or higher
- Telegram Bot Token
- Internet Connection

### Installation

1. Clone the repository:
```bash
git clone https://github.com/hackresist/Shell-X-bot.git
```

2. Navigate to the project directory:
```bash
cd Shell-X-bot
```

3. Configure your bot:
   - Edit `config.ps1` with your Telegram Bot Token and Chat ID
   - Ensure all required PowerShell modules are installed

4. Run the bot:
```powershell
.\main.ps1
```

## 📚 Documentation

For detailed information about all available commands, please refer to the [Commands Documentation](/Docs/command_readme/commands.md).

## 🔒 Security Features

- Rate limiting to prevent abuse
- Command categorization by risk level
- Secure file operations
- Protected system commands
- Telegram API security

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

## ⚠️ Issue Reporting

If you encounter any problems or have suggestions for improvements, please open an issue in the GitHub repository. When reporting issues, please include:

- Detailed description of the problem
- Steps to reproduce
- Expected behavior
- Actual behavior
- System information
- Any relevant error messages

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⭐ Support

If you find this project helpful, please give it a star on GitHub!

---

<div align="center">
Made with ❤️ By HackResist
</div> 