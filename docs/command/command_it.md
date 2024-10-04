# 👉 Dettagli e Esempi dei Comandi👈

## 📝 Creare un File
`/createfile C:\Users\Down\Documents\notes.txt Hello, World!`

Crea un file notes.txt con il contenuto `Hello, World!` nel percorso specificato.

**Uso:** Crea un nuovo file nel percorso specificato e inserisce il contenuto fornito. Se il file esiste già, verrà sovrascritto.

## 🗑️ Rimuovere un File
`/removefile C:\Users\Down\Documents\notes.txt`

Rimuove il file notes.txt dal percorso specificato.

## 📂 Elenco dei File
`/listfiles C:\Users\Lokesh\Documents`

**Uso:** Elenca tutti i file presenti nel percorso della directory specificata in modo da poter vedere quali file sono disponibili.

## 🔐 Disconnettersi
`/logoff`

**Uso:** Disconnette l'utente dalla sessione Windows corrente.

## 💬 Mostrare un Messaggio Personalizzato
`/showmessage "This is a custom alert message."`

**Uso:** Visualizza un dialogo con il messaggio personalizzato fornito dall'utente.

## 🔒 Bloccare il Computer
`/lockcomputer`

**Uso:** Blocca il computer, richiedendo di effettuare nuovamente l'accesso per accedere al sistema.

## ⏳ Spegnere il Computer
- `/shutdown 60` : Spegne il computer dopo un tempo specificato (60 secondi).

- `/shutdown` : Spegne immediatamente il computer.

## 🔄 Riavviare il Computer
`/restart`

**Uso:** Chiude tutte le applicazioni e i processi, quindi riavvia il computer.

## 💻 Informazioni di Sistema
`/sysinfo`

**Uso:** Controlla l'anno e il numero di build del sistema operativo.

## 📁 Directory Corrente
`/getcurrentdir`

**Uso:** Recupera la directory corrente in cui si trova il file.

## 🖥️ Informazioni sull'Hardware
`/gethardwareinfo`

**Uso:** Controlla le informazioni sull'hardware, come il produttore e il modello del computer.

## 📝 Cronologia dei Comandi
`/gethistory`

**Uso:** Visualizza la cronologia dei comandi eseguiti nella sessione PowerShell corrente.

## 🧹 Cancellare la Cronologia dei Comandi
`/clearhistory`

**Uso:** Cancella la cronologia dei comandi nella sessione PowerShell corrente.

## 📊 Controllare lo Stato della Batteria, CPU, RAM e Rete
`/getsystemstatus`

**Uso:** Controlla lo stato della batteria, l'utilizzo della CPU, l'utilizzo della RAM e lo stato della connessione di rete.

## 🌐 Controllare l'Indirizzo IP Pubblico
`/getip`

**Uso:** Recupera e visualizza l'indirizzo IP esterno della rete corrente.

## 🔌 Controllare le Informazioni sull'Hardware Collegate
`/getdevices`

**Uso:** Elenca i dispositivi hardware collegati (ad esempio, dispositivi USB, tastiere, microfoni).

## 📋 Elencare Tutte le Applicazioni Aperte
`/getopenedapplications`

**Uso:** Elenca tutte le applicazioni attualmente aperte nel sistema.

## ⏱️ Controllare il Tempo di Attività del Sistema
`/getuptime`

**Uso:** Visualizza il tempo che il sistema è stato attivo dalla sua ultima accensione.

## 💾 Dettagli sui Dispositivi di Archiviazione Collegati
`/getstoragedetails`

**Uso:** Controlla le informazioni sull'uso e sullo spazio disponibile dei dispositivi di archiviazione collegati.

## 📄 Controllare il Contenuto di un File Specifico
`/getfilecontent C:\Users\Down\Documents\example.txt`

**Uso:** Recupera e visualizza il contenuto del file nel percorso specificato.

## 🛠️ Eseguire un File nel Percorso Specificato
`/runfile C:\Users\YourName\Documents\example.txt`

**Uso:** Apre il file con l'applicazione predefinita.

## ❌ Terminare un Processo con ID o Nome
`/killprocess notepad` o `/killprocess 1243`

**Uso:** Termina un processo in esecuzione in base all'ID o al nome del processo.

Qui `1243` è l'ID del processo per l'applicazione o il processo.

## ▶️ Eseguire un File Eseguibile e Passare Argomenti Opzionali
`/runprocess C:\windows\notepad.exe C:\User\Down\Document\Hello.txt`

**Uso:** Esegue un file eseguibile e, facoltativamente, può inviare argomenti o percorsi di file.
