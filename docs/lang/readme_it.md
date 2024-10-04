# Shell-X-Bot🤖
## Panoramica
Questo bot consente agli utenti di eseguire vari comandi su Telegram per sfruttare le funzionalità di PowerShell nella gestione dell'ambiente Windows.

>⭐ Se questo progetto ti è utile, ti preghiamo di dare una stella!

## 🚀 Funzionalità
- **Esecuzione di Comandi:** Esecuzione di comandi per interagire con il sistema Windows tramite Telegram.
- **Gestione File:** Creazione, eliminazione e visualizzazione di file di sistema.
- **Informazioni di Sistema:** Controllo dello stato del sistema, informazioni hardware e directory corrente.
- **Interazione con l'Utente:** Invio di messaggi di benvenuto e supporto per l'elaborazione dei comandi da parte degli utenti.
- **Controllo Remoto:** Disconnessione, blocco, riavvio o spegnimento del computer da remoto.

## 📦 Requisiti
Prima di iniziare, assicurati di avere quanto segue:
- Sistema operativo Windows
- Un bot in grado di ricevere notifiche su Telegram.
- Moduli PowerShell necessari installati:
  - `Microsoft.PowerShell.Security`
  - `Microsoft.PowerShell.Utility`
  - `NetworkConnectivityStatus`
  - `NetworkSwitchManager`

## ⚙️ Installazione
1. **Clona il Repository:**
    `git clone https://github.com/HackResist/Shell-X-Bot.git`

2. **Configura il Bot:** Vai su `bot-father` per creare un bot e controlla l'ID chat con `get chat id`.
3. **Imposta il Token del Bot e l'ID Chat:** Apri lo script e sostituisci $botToken e $chatID con il token del bot di Telegram e l'ID chat.

4. **Regola la Politica di Esecuzione:** Esegui il seguente comando in PowerShell per consentire l'esecuzione degli script:
```Set-ExecutionPolicy RemoteSigned -Scope Process -Force```
5. **Esegui lo Script:** Esegui lo script nel terminale PowerShell: `.\path-of-script\YourScriptName.ps1`

## 🛠️ Comandi Disponibili
- `/start`:👋 Mostra un messaggio di comando.

- `/createfile <file_path> <content>`: 📝 Crea un file con il contenuto specificato.

- `/removefile <file_path>`:🗑️ Elimina il file specificato.

- `/listfiles <Directory_path>`: 📂 Controlla l'elenco dei file nella directory specificata.

- `/logoff`:🔐 Disconnetti l'utente corrente.

- `/showmessage <content>`:💬 Mostra un messaggio personalizzato nella finestra di dialogo.

- `/lockcomputer`: 🔒 Blocca il computer.

- `/shutdown [delay]`: ⏳ Spegni il computer impostando un ritardo.

- `/restart`:🔄 Riavvia il computer.

- `/sysinfo`:💻 Controlla le informazioni di sistema.

- `/getcurrentdir`:📁 Controlla la directory corrente in cui si trova il file dello script PowerShell.

- `/gethardwareinfo`:🖥️ Ottieni informazioni hardware.

- `/gethistory`:📝 Ottieni la cronologia dei comandi.

- `/clearhistory`: 🧹 Elimina la cronologia dei comandi.

- `/getsystemstatus`: 📊 Ottieni lo stato della batteria, CPU, RAM e rete.

- `/getip`: 🌐 Ottieni l'indirizzo IP esterno.

- `/getdevices`:🔌 Ottieni informazioni sull'hardware collegato.

- `/getopenedapplications`:📋 Controlla l'elenco delle applicazioni in esecuzione.

- `/getuptime`: ⏱️ Controlla il tempo di attività del sistema.

- `/getstoragedetails`: 💾 Controlla le informazioni sui dispositivi di archiviazione collegati.

- `/getfilecontent <file_path>`:📄 Ottieni il contenuto del file specificato.

- `/runfile <file_path>`:🛠️ Esegui il file con il percorso specificato.

- `/killprocess <process_id | application_name>`:❌ Termina il processo in esecuzione con ID o nome.

- `/runprocess <exe_path> [File_path]`:▶️ Esegui il file eseguibile con argomenti facoltativi.

## 📋 Descrizione Dettagliata dei Comandi
Se hai domande sull'uso dei comandi, consulta l'[elenco dei comandi](/docs/command/command_it.md) e il file di esempio.

## 🤝 Contributi
I contributi sono sempre benvenuti! Se hai suggerimenti per miglioramenti o funzionalità aggiuntive, fork il repository e invia una pull request.

## 📜 Licenza
Questo progetto è fornito sotto la licenza MIT. Per maggiori informazioni, consultare il file [LICENSE](/./LICENSE).

## 📞 Supporto
Se hai domande o hai bisogno di supporto, contattaci tramite **[Twitter](https://x.com/dev_lokesh_)**, **[LinkedIn](https://www.linkedin.com/in/lokeshchauhanapex/)** o crea un problema nel repository GitHub.
