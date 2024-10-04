# Shell-X-Bot🤖
## Übersicht
Dieser Bot ermöglicht es den Benutzern, verschiedene Befehle über Telegram auszuführen, um die Funktionen von PowerShell zur Verwaltung der Windows-Umgebung zu nutzen.

>⭐ Wenn Ihnen dieses Projekt nützlich ist, drücken Sie bitte den Stern!

## 🚀 Funktionen
- **Befehlsausführung:** Ausführen von Befehlen zur Interaktion mit dem Windows-System über Telegram.
- **Dateiverwaltung:** Erstellen, Löschen und Anzeigen von Systemdateien.
- **Systeminformationen:** Überprüfen des Systemstatus, der Hardwareinformationen und des aktuellen Verzeichnisses.
- **Benutzerinteraktion:** Senden von Willkommensnachrichten und Unterstützung für Benutzer, um Befehle einfach zu verarbeiten.
- **Fernsteuerung:** Abmelden, Sperren, Neustarten oder Herunterfahren des Computers aus der Ferne.

## 📦 Voraussetzungen
Überprüfen Sie vor dem Start die folgenden Punkte:
- Windows-Betriebssystem
- Ein Bot in Telegram, der Benachrichtigungen empfangen kann.
- Installierte PowerShell-Module:
  - `Microsoft.PowerShell.Security`
  - `Microsoft.PowerShell.Utility`
  - `NetworkConnectivityStatus`
  - `NetworkSwitchManager`

## ⚙️ Installation
1. **Repository klonen:**
    `git clone https://github.com/HackResist/Shell-X-Bot.git`

2. **Bot einrichten:** Gehen Sie zu `bot-father`, um einen Bot zu erstellen und überprüfen Sie die Chat-ID mit `get chat id`.
3. **Bot-Token und Chat-ID einrichten:** Öffnen Sie das Skript und ersetzen Sie $botToken und $chatID durch das Token des Telegram-Bots und die Chat-ID.

4. **Ausführungsrichtlinie anpassen:** Führen Sie im PowerShell die folgenden Befehle aus, um die Ausführung von Skripten zuzulassen:
```Set-ExecutionPolicy RemoteSigned -Scope Process -Force```
5. **Skript ausführen:** Führen Sie das Skript im PowerShell-Terminal aus: `.\path-of-script\YourScriptName.ps1`

## 🛠️ Verfügbare Befehle
- `/start`:👋 Zeigt die Befehlsnachricht an.

- `/createfile <file_path> <content>`: 📝 Erstellt eine Datei mit dem angegebenen Inhalt.

- `/removefile <file_path>`:🗑️ Löscht die angegebene Datei.

- `/listfiles <Directory_path>`: 📂 Überprüft die Dateiliste im angegebenen Verzeichnis.

- `/logoff`:🔐 Meldet den aktuellen Benutzer ab.

- `/showmessage <content>`:💬 Zeigt eine benutzerdefinierte Nachricht im Dialogfeld an.

- `/lockcomputer`: 🔒 Sperrt den Computer.

- `/shutdown [delay]`: ⏳ Fährt den Computer mit einer Verzögerung herunter.

- `/restart`:🔄 Startet den Computer neu.

- `/sysinfo`:💻 Überprüft die Systeminformationen.

- `/getcurrentdir`:📁 Überprüft das aktuelle Verzeichnis, in dem sich die PowerShell-Skriptdatei befindet.

- `/gethardwareinfo`:🖥️ Holt sich die Hardwareinformationen.

- `/gethistory`:📝 Holt sich die Befehlsverlauf.

- `/clearhistory`: 🧹 Löscht den Befehlsverlauf.

- `/getsystemstatus`: 📊 Holt sich den Status von Akku, CPU, RAM und Netzwerk.

- `/getip`: 🌐 Holt sich die externe IP-Adresse.

- `/getdevices`:🔌 Holt sich die Informationen über angeschlossene Hardware.

- `/getopenedapplications`:📋 Überprüft die Liste der laufenden Anwendungen.

- `/getuptime`: ⏱️ Überprüft die Systembetriebszeit.

- `/getstoragedetails`: 💾 Überprüft die Informationen zu angeschlossenen Speichermedien.

- `/getfilecontent <file_path>`:📄 Holt sich den Inhalt der angegebenen Datei.

- `/runfile <file_path>`:🛠️ Führt die Datei über den angegebenen Pfad aus.

- `/killprocess <process_id | application_name>`:❌ Beendet den laufenden Prozess nach ID oder Name.

- `/runprocess <exe_path> [File_path]`:▶️ Führt die ausführbare Datei mit optionalen Argumenten aus.

## 📋 Detaillierte Befehlsbeschreibung
Wenn Sie Fragen zur Verwendung von Befehlen haben, konsultieren Sie die [Befehlsliste](/docs/command/command_de-DE.md) und die Beispieldatei.

## 🤝 Mitwirken
Beiträge sind immer willkommen! Wenn Sie Verbesserungsvorschläge oder neue Funktionen haben, forken Sie das Repository und senden Sie eine Pull-Request.

## 📜 Lizenz
Dieses Projekt wird unter der MIT-Lizenz bereitgestellt. Für weitere Informationen siehe die [LICENSE](/./LICENSE) Datei.

## 📞 Unterstützung
Wenn Sie Fragen haben oder Unterstützung benötigen, kontaktieren Sie uns bitte über **[Twitter](https://x.com/dev_lokesh_)**, **[LinkedIn](https://www.linkedin.com/in/lokeshchauhanapex/)** oder erstellen Sie ein Issue im GitHub-Repository.
