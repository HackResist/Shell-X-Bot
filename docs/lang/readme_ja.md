# Shell-X-Bot🤖
## 概要
このボットは、ユーザーがTelegramでさまざまなコマンドを実行して、Windows環境を管理するためにPowerShellの機能を活用できるようにします。

>⭐ このプロジェクトが役に立った場合は、星を付けてください！

## 🚀 機能
- **コマンドの実行:** Telegramを介してWindowsシステムと対話するコマンドを実行します。
- **ファイル管理:** システムファイルを作成、削除、表示できます。
- **システム情報:** システムの状態、ハードウェア情報、現在のディレクトリを確認します。
- **ユーザーとの対話:** ウェルカムメッセージを送信し、ユーザーがコマンドを簡単に処理できるようにサポートします。
- **リモートコントロール:** リモートでログオフ、ロック、再起動、またはコンピューターをシャットダウンします。

## 📦 前提条件
開始する前に、以下を確認してください:
- Windowsオペレーティングシステム
- Telegramで通知を受け取るためのボット。
- 必要なPowerShellモジュールのインストール:
  - `Microsoft.PowerShell.Security`
  - `Microsoft.PowerShell.Utility`
  - `NetworkConnectivityStatus`
  - `NetworkSwitchManager`

## ⚙️ インストール
1. **リポジトリのクローン:**
    `git clone https://github.com/HackResist/Shell-X-Bot.git`

2. **ボットの設定:** `bot-father`に移動してボットを作成し、`get chat id`でチャットIDを確認します。
3. **ボットトークンとチャットIDの設定:** スクリプトを開いて、$botTokenと$chatIDをTelegramボットのトークンとチャットIDに置き換えます。

4. **実行ポリシーの調整:** PowerShellで次のコマンドを実行してスクリプトの実行を許可します:
```Set-ExecutionPolicy RemoteSigned -Scope Process -Force```
5. **スクリプトの実行:** PowerShellターミナルでスクリプトを実行します: `.\path-of-script\YourScriptName.ps1`

## 🛠️ 使用可能なコマンド
- `/start`:👋 コマンドメッセージを表示します。

- `/createfile <file_path> <content>`: 📝 指定された内容でファイルを作成します。

- `/removefile <file_path>`:🗑️ 指定されたファイルを削除します。

- `/listfiles <Directory_path>`: 📂 指定されたディレクトリのファイルリストを確認します。

- `/logoff`:🔐 現在のユーザーをログオフします。

- `/showmessage <content>`:💬 ダイアログボックスにカスタムメッセージを表示します。

- `/lockcomputer`: 🔒 コンピュータをロックします。

- `/shutdown [delay]`: ⏳ 遅延を設定してコンピュータをシャットダウンします。

- `/restart`:🔄 コンピュータを再起動します。

- `/sysinfo`:💻 システム情報を確認します。

- `/getcurrentdir`:📁 PowerShellスクリプトファイルがある現在のディレクトリを確認します。

- `/gethardwareinfo`:🖥️ ハードウェア情報を取得します。

- `/gethistory`:📝 コマンド履歴を取得します。

- `/clearhistory`: 🧹 コマンド履歴を削除します。

- `/getsystemstatus`: 📊 バッテリー、CPU、RAM、ネットワークの状態を取得します。

- `/getip`: 🌐 外部IPアドレスを取得します。

- `/getdevices`:🔌 接続されているハードウェアの情報を取得します。

- `/getopenedapplications`:📋 実行中のアプリケーションのリストを確認します。

- `/getuptime`: ⏱️ システムの稼働時間を確認します。

- `/getstoragedetails`: 💾 接続されたストレージデバイスの情報を確認します。

- `/getfilecontent <file_path>`:📄 指定されたファイルの内容を取得します。

- `/runfile <file_path>`:🛠️ パスを指定してファイルを実行します。

- `/killprocess <process_id | application_name>`:❌ IDまたは名前で実行中のプロセスを終了します。

- `/runprocess <exe_path> [File_path]`:▶️ 実行可能ファイルをオプション引数とともに実行します。

## 📋 コマンドの詳細な説明
コマンドの使用に関する質問がある場合は、[コマンドリスト](/docs/command/command_ja.md)とサンプルファイルを参照してください。

## 🤝 貢献
貢献はいつでも歓迎です！改善や追加機能の提案がある場合は、リポジトリをフォークしてプルリクエストを送信してください。

## 📜 ライセンス
このプロジェクトはMITライセンスの下で提供されています。詳細については、[LICENSE](/./LICENSE)ファイルを参照してください。

## 📞 サポート
質問がある場合やサポートが必要な場合は、**[Twitter](https://x.com/dev_lokesh_)**、**[LinkedIn](https://www.linkedin.com/in/lokeshchauhanapex/)**、またはGitHubリポジトリで問題を作成して連絡してください。
