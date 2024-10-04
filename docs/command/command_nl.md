# 👉Gedetailleerde uitleg en voorbeelden van commando's👈

## 📝 Bestand maken
`/createfile C:\Users\Down\Documents\notes.txt Hello, World!`

Maakt een bestand genaamd notes.txt met de inhoud `Hello, World!` op het opgegeven pad.

**Gebruik:** Maak een nieuw bestand op het opgegeven pad en voeg de gegeven inhoud toe. Als het bestand al bestaat, wordt het overschreven.

## 🗑️ Bestand verwijderen
`/removefile C:\Users\Down\Documents\notes.txt`

Verwijdert het bestand notes.txt op het opgegeven pad.

## 📂 Bestandslijst
`/listfiles C:\Users\Lokesh\Documents`

**Gebruik:** Geeft een lijst van alle bestanden in het opgegeven mappad, zodat je kunt controleren welke bestanden beschikbaar zijn.

## 🔐 Afmelden
`/logoff`

**Gebruik:** Meldt de gebruiker af van de huidige Windows-sessie.

## 💬 Aangepaste melding weergeven
`/showmessage "This is a custom alert message."`

**Gebruik:** Toont een dialoogvenster met de door de gebruiker opgegeven aangepaste boodschap.

## 🔒 Computer vergrendelen
`/lockcomputer`

**Gebruik:** Vergrendelt de computer; je moet opnieuw inloggen om toegang tot het systeem te krijgen.

## ⏳ Computer afsluiten
- `/shutdown 60` : Sluit de computer na de opgegeven tijd (60 seconden) af.

- `/shutdown` : Sluit de computer onmiddellijk af.

## 🔄 Computer opnieuw opstarten
`/restart`

**Gebruik:** Sluit alle applicaties en processen af en start de computer opnieuw op.

## 💻 Systeeminformatie
`/sysinfo`

**Gebruik:** Controleert het bouwjaar en het nummer van het besturingssysteem van het systeem.

## 📁 Huidige map
`/getcurrentdir`

**Gebruik:** Verkrijgt de huidige map waar het bestand zich bevindt.

## 🖥️ Hardware-informatie
`/gethardwareinfo`

**Gebruik:** Controleert hardware-informatie zoals de fabrikant en het model van de computer.

## 📝 Commando-historie
`/gethistory`

**Gebruik:** Controleert de geschiedenis van de uitgevoerde commando's in de huidige PowerShell-sessie.

## 🧹 Commando-historie wissen
`/clearhistory`

**Gebruik:** Verwijdert de commando-historie van de huidige PowerShell-sessie.

## 📊 Controleer batterij-, CPU-, RAM- en netwerkinformatie
`/getsystemstatus`

**Gebruik:** Controleert de batterijstatus, CPU-gebruik, RAM-gebruik en netwerkaansluitstatus.

## 🌐 Controleer openbaar IP-adres
`/getip`

**Gebruik:** Verkrijgt en toont het externe IP-adres van het huidige netwerk.

## 🔌 Controleer aangesloten hardware-informatie
`/getdevices`

**Gebruik:** Lijst de aangesloten hardwareapparaten (zoals USB-apparaten, toetsenborden, microfoons) op.

## 📋 Lijst van alle geopende applicaties
`/getopenedapplications`

**Gebruik:** Lijst alle momenteel geopende applicaties in het systeem.

## ⏱️ Controleer systeem uptime
`/getuptime`

**Gebruik:** Toont de tijd dat het systeem is ingeschakeld sinds de laatste opstart.

## 💾 Gegevens over aangesloten opslagapparaten
`/getstoragedetails`

**Gebruik:** Controleert informatie over het gebruik en de beschikbare ruimte van aangesloten opslagapparaten.

## 📄 Controleer de inhoud van een opgegeven bestand
`/getfilecontent C:\Users\Down\Documents\example.txt`

**Gebruik:** Verkrijgt en toont de inhoud van het bestand op het opgegeven pad.

## 🛠️ Voer een bestand uit op een opgegeven pad
`/runfile C:\Users\YourName\Documents\example.txt`

**Gebruik:** Opent het bestand met de standaardtoepassing.

## ❌ Stop een proces op basis van ID of naam
`/killprocess notepad` of `/killprocess 1243`

**Gebruik:** Stop een draaiend proces op basis van de proces-ID of naam.

Hier is `1243` de proces-ID van de applicatie of het proces.

## ▶️ Voer een uitvoerbare bestand uit en geef optionele argumenten door
`/runprocess C:\windows\notepad.exe C:\User\Down\Document\Hello.txt`

**Gebruik:** Voert het uitvoerbare bestand uit en kan optioneel argumenten of bestands paden doorgeven.
