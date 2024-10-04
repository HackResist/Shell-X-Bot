# 👉Detaillierte Erklärung von Befehlen mit Beispielen👈

## 📝 Datei erstellen
`/createfile C:\Users\Down\Documents\notes.txt Hello, World!`

Erstellt eine Datei namens notes.txt im angegebenen Pfad mit dem Inhalt `Hello, World!`.

**Verwendung:** Erstellt eine neue Datei im angegebenen Pfad mit dem gegebenen Inhalt. Wenn die Datei bereits existiert, wird sie überschrieben.

## 🗑️ Datei entfernen
`/removefile C:\Users\Down\Documents\notes.txt`

Entfernt die Datei notes.txt aus dem angegebenen Pfad.

## 📂 Dateien auflisten
`/listfiles C:\Users\Lokesh\Documents`

**Verwendung:** Listet alle Dateien im angegebenen Verzeichnispfad auf, sodass Sie sehen können, was verfügbar ist.

## 🔐 Abmelden
`/logoff`

**Verwendung:** Meldet den aktuellen Benutzer von der Windows-Sitzung ab.

## 💬 Benutzerdefinierte Nachricht anzeigen
`/showmessage "This is a custom alert message."`

**Verwendung:** Zeigt ein Dialogfeld mit einer benutzerdefinierten Nachricht an, die vom Benutzer bereitgestellt wurde.

## 🔒 Computer sperren
`/lockcomputer`

**Verwendung:** Sperrt den Computer, sodass der Benutzer sich erneut anmelden muss, um auf das System zuzugreifen.

## ⏳ Computer herunterfahren
- `/shutdown 60`: Fährt den Computer nach einer optionalen Verzögerung in Sekunden (60) herunter.

- `/shutdown`: Fährt den Computer sofort herunter.

## 🔄 Computer neu starten

`/restart`

**Verwendung:** Startet den Computer neu und schließt alle Anwendungen und Prozesse.

## 💻 Systeminformationen
`/sysinfo`

**Verwendung:** Zeigt das Baujahr und die Versionsnummer des Betriebssystems an.

## 📁 Aktuelles Verzeichnis

`/getcurrentdir`

**Verwendung:** Ruft das aktuelle Verzeichnis ab, in dem sich die Datei befindet.

## 🖥️ Hardwareinformationen
`/gethardwareinfo`

**Verwendung:** Ruft Details zur Hardware des Computers ab, einschließlich Hersteller und Modell.

## 📝 Befehlsverlauf

`/gethistory`

**Verwendung:** Ruft den Verlauf der in der aktuellen PowerShell-Sitzung ausgeführten Befehle ab.

## 🧹 Befehlsverlauf löschen
`/clearhistory`

**Verwendung:** Löscht den Befehlsverlauf aus der aktuellen PowerShell-Sitzung.

## 📊 Status von Batterie, CPU, RAM und Netzwerk abrufen

`/getsystemstatus`

**Verwendung:** Ruft den aktuellen Status der Batterie, CPU-Auslastung, RAM-Auslastung und Netzwerkkonnektivität ab.

## 🌐 Öffentliche IP-Adresse abrufen

`/getip`

**Verwendung:** Ruft die externe IP-Adresse des aktuellen Netzwerks ab und zeigt sie an.

## 🔌 Informationen zu angeschlossener Hardware abrufen

`/getdevices`

**Verwendung:** Listet alle angeschlossenen Hardwaregeräte auf (z. B. USB-Geräte, Tastaturen, Mikrofone).

## 📋 Alle geöffneten Anwendungen auflisten

`/getopenedapplications`

**Verwendung:** Listet alle derzeit geöffneten Anwendungen auf dem System auf.

## ⏱️ Systemlaufzeit abrufen

`/getuptime`

**Verwendung:** Zeigt die Dauer an, die das System seit dem letzten Neustart läuft.

## 💾 Details zu angeschlossenen Speichermedien

`/getstoragedetails`

**Verwendung:** Ruft Informationen über angeschlossene Speichermedien ab, einschließlich genutztem und freiem Speicherplatz.

## 📄 Inhalt einer angegebenen Datei abrufen

`/getfilecontent C:\Users\Down\Documents\example.txt`

**Verwendung:** Ruft den Inhalt der Datei im angegebenen Pfad ab und zeigt ihn an.

## 🛠️ Datei ausführen, indem der Pfad angegeben wird

`/runfile C:\Users\YourName\Documents\example.txt`

**Verwendung:** Öffnet die angegebene Datei mit der Standardanwendung.

## ❌ Einen laufenden Prozess anhand der ID oder des Namens beenden

`/killprocess notepad` oder `/killprocess 1243`

**Verwendung:** Beendet einen laufenden Prozess, der durch die Prozess-ID oder den Namen identifiziert wird.

Hier ist `1243` die Prozess-ID einer Anwendung oder eines Prozesses.

## ▶️ Ausführbare Datei mit optionalen Argumenten ausführen

`/runprocess C:\windows\notepad.exe C:\User\Down\Document\Hello.txt`

**Verwendung:** Führt eine ausführbare Datei aus und kann optional Argumente oder Dateipfade übergeben, die an die ausführbare Datei übergeben werden sollen.
