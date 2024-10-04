# 👉Description détaillée des commandes avec exemples👈

## 📝 Créer un fichier
`/createfile C:\Users\Down\Documents\notes.txt Hello, World!`

Crée un fichier nommé notes.txt dans le chemin spécifié avec le contenu `Hello, World!`.

**Utilisation :** Crée un nouveau fichier dans le chemin spécifié et insère le contenu fourni. Si le fichier existe déjà, il sera écrasé.

## 🗑️ Supprimer un fichier
`/removefile C:\Users\Down\Documents\notes.txt`

Supprime le fichier notes.txt du chemin spécifié.

## 📂 Lister les fichiers
`/listfiles C:\Users\Lokesh\Documents`

**Utilisation :** Liste tous les fichiers dans le chemin du répertoire spécifié, afin que vous puissiez voir lesquels sont disponibles.

## 🔐 Se déconnecter
`/logoff`

**Utilisation :** Déconnecte l'utilisateur actuel de la session Windows.

## 💬 Afficher un message personnalisé
`/showmessage "This is a custom alert message."`

**Utilisation :** Affiche une boîte de dialogue contenant un message personnalisé fourni par l'utilisateur.

## 🔒 Verrouiller l'ordinateur
`/lockcomputer`

**Utilisation :** Verrouille l'ordinateur, nécessitant que l'utilisateur se reconnecte pour accéder au système.

## ⏳ Éteindre l'ordinateur
- `/shutdown 60` : Éteint l'ordinateur après un délai optionnel en secondes (60).

- `/shutdown` : Éteint l'ordinateur immédiatement.

## 🔄 Redémarrer l'ordinateur

`/restart`

**Utilisation :** Redémarre l'ordinateur en fermant toutes les applications et processus.

## 💻 Informations système
`/sysinfo`

**Utilisation :** Affiche l'année de construction et le numéro de version du système d'exploitation.

## 📁 Répertoire actuel

`/getcurrentdir`

**Utilisation :** Obtient le répertoire actuel où se trouve le fichier.

## 🖥️ Informations sur le matériel
`/gethardwareinfo`

**Utilisation :** Obtient des détails sur le matériel de l'ordinateur, y compris le fabricant et le modèle.

## 📝 Historique des commandes

`/gethistory`

**Utilisation :** Obtient l'historique des commandes exécutées dans la session actuelle de PowerShell.

## 🧹 Effacer l'historique des commandes
`/clearhistory`

**Utilisation :** Supprime l'historique des commandes de la session actuelle de PowerShell.

## 📊 Vérifier l'état de la batterie, du CPU, de la RAM et du réseau

`/getsystemstatus`

**Utilisation :** Obtient l'état actuel de la batterie, l'utilisation du CPU, l'utilisation de la RAM et l'état de connectivité réseau.

## 🌐 Obtenir l'adresse IP publique

`/getip`

**Utilisation :** Obtient et affiche l'adresse IP externe du réseau actuel.

## 🔌 Obtenir des informations sur le matériel connecté

`/getdevices`

**Utilisation :** Liste tous les périphériques matériels connectés (par exemple, périphériques USB, claviers, microphones).

## 📋 Lister toutes les applications ouvertes

`/getopenedapplications`

**Utilisation :** Liste toutes les applications actuellement ouvertes dans le système.

## ⏱️ Vérifier le temps de fonctionnement du système

`/getuptime`

**Utilisation :** Affiche le temps pendant lequel le système a été en fonctionnement depuis le dernier démarrage.

## 💾 Détails des dispositifs de stockage connectés

`/getstoragedetails`

**Utilisation :** Obtient des informations sur les dispositifs de stockage connectés, y compris l'espace utilisé et disponible.

## 📄 Vérifier le contenu d'un fichier spécifique

`/getfilecontent C:\Users\Down\Documents\example.txt`

**Utilisation :** Obtient et affiche le contenu du fichier à l'emplacement spécifié.

## 🛠️ Exécuter un fichier en spécifiant le chemin

`/runfile C:\Users\YourName\Documents\example.txt`

**Utilisation :** Ouvre le fichier spécifié avec l'application par défaut.

## ❌ Terminer un processus en cours par ID ou nom

`/killprocess notepad` ou `/killprocess 1243`

**Utilisation :** Termine un processus en cours identifié par son ID de processus ou son nom.

Ici, `1243` est l'ID de processus d'une application ou d'un processus.

## ▶️ Exécuter un fichier exécutable et passer des arguments optionnels

`/runprocess C:\windows\notepad.exe C:\User\Down\Document\Hello.txt`

**Utilisation :** Exécute un fichier exécutable et peut passer éventuellement des arguments ou des chemins de fichier à l'exécution du fichier.
