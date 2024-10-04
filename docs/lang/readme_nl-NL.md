# Shell-X-Bot🤖
## Overzicht

Deze bot stelt gebruikers in staat om verschillende opdrachten uit te voeren via Telegram, zodat ze de functies van PowerShell kunnen gebruiken om een Windows-omgeving te beheren.

>⭐ Als je dit project nuttig vindt, geef dan een ster!

## 🚀 Functionaliteiten
- **Opdrachten uitvoeren:** Uitvoeren van opdrachten die interactie hebben met het Windows-systeem via Telegram.
- **Bestandsbeheer**  Maken, verwijderen en bekijken van systeem bestanden.
- **Systeeminformatie::** Controleer de systeemstatus, hardware-informatie, en huidige map.
- **Gebruikersinteractie:**  Stuur een welkomstbericht en help gebruikers om opdrachten eenvoudiger uit te voeren.
- **Afstandsbediening:** Afstandsbediening voor afmelden, vergrendelen, herstarten of afsluiten van de computer.

## 📦 Vereisten
Controleer de volgende zaken voordat je begint:
- Windows-besturingssysteem
- Een bot die meldingen kan ontvangen in Telegram
- Installeer de vereiste PowerShell-modules:
  - `Microsoft.PowerShell.Security`
  - `Microsoft.PowerShell.Utility`
  - `NetworkConnectivityStatus`
  - `NetworkSwitchManager`

## ⚙️  Installatie
1. **Kloon de repository:**
    ```git clone https://github.com/HackResist/Shell-X-Bot.git```

2. **Bot instellen:** Ga naar `bot-father` om een bot te maken en gebruik `get chat id` om je chat-ID te verkrijgen.

 
3. **Bot-token en chat-ID instellen:**  Open het script en vervang $botToken en $chatID met het bot-token en de chat-ID van Telegram.

4. **Uitvoeringsbeleid aanpassen:** Voer het volgende commando uit in PowerShell om het uitvoeren van het script toe te staan:
```Set-ExecutionPolicy RemoteSigned -Scope Process -Force```
5. **Voer het script uit:** Start het script in de PowerShell-terminal: `.\path-of-script\YourScriptName.ps1`

## 🛠️ Beschikbare opdrachten
- `/start`: 👋 Toon het commandobericht.

- `/createfile <file_path> <content>`: 📝 Maak een bestand met de opgegeven inhoud.

- `/removefile <file_path>`:🗑️ Verwijder het opgegeven bestand.

- `/listfiles <Directory_path>`: 📂 Bekijk de lijst met bestanden in de opgegeven map.

- `/logoff`: 🔐 Log de huidige gebruiker uit.

- `/showmessage <content>`: 💬 Toon een aangepast bericht in een dialoogvenster.

- `/lockcomputer`: 🔒 Vergrendel de computer.

- `/shutdown [delay]`: ⏳ Zet de computer uit met een ingestelde vertraging.

- `/restart`: 🔄 Herstart de computer.

- `/sysinfo`: 💻 Bekijk systeeminformatie.

- `/getcurrentdir`: 📁 Bekijk de huidige map waarin het PowerShell-script zich bevindt.

- `/gethardwareinfo`: 🖥️ Verkrijg hardware-informatie.

- `/gethistory`:📝 Bekijk de opdrachtgeschiedenis.

- `/clearhistory`: 🧹 Wis de opdrachtgeschiedenis.

- `/getsystemstatus`: 📊 Verkrijg batterij-, CPU-, RAM- en netwerkstatus.

- `/getip`: 🌐 Verkrijg het externe IP-adres.

- `/getdevices`: 🔌 Verkrijg informatie over aangesloten hardware.

- `/getopenedapplications`: 📋 Bekijk de lijst met geopende applicaties.

- `/getuptime`: ⏱️ Bekijk de systeemtijd. 

- `/getstoragedetails`: 💾 Bekijk informatie over aangesloten opslagapparaten.

- `/getfilecontent <file_path>`: 📄 Verkrijg de inhoud van het opgegeven bestand.

- `/runfile <file_path>`:  🛠️ Voer een bestand uit op het opgegeven pad.

- `/killprocess <process_id | application_name>`: ❌ Beëindig een actief proces via ID of naam.

- `/runprocess <exe_path> [File_path]`: ▶️ Voer een uitvoerbaar bestand uit met optionele argumenten.
  
##  Gedetailleerde opdrachten uitleg

Heb je vragen over het gebruik van de opdrachten, bekijk dan de [opdrachtenlijst](/docs/command/command_nl-NL.md) en voorbeeldbestanden.

## 🤝 Bijdragen
Bijdragen zijn altijd welkom! Als je verbeteringen of nieuwe functies hebt, fork de repository en stuur een pull request.

## 📜 Licentie
Dit project wordt aangeboden onder de MIT-licentie. Zie het [LICENSE](/./LICENSE) bestand voor meer informatie.

## 📞 Ondersteuning
Voor vragen of ondersteuning kun je contact met ons opnemen via **[Twitter](https://x.com/dev_lokesh_)**, **[LinkedIn](https://www.linkedin.com/in/lokeshchauhanapex/)**, of door een issue aan te maken op de GitHub-repository.
