# Shell-X-Bot🤖
## Résumé
Ce bot permet aux utilisateurs d'exécuter divers commandes via Telegram pour tirer parti des fonctionnalités de PowerShell et gérer l'environnement Windows.

>⭐ Si ce projet vous semble utile, veuillez lui donner une étoile !

## 🚀 Fonctions
- **Exécution de commandes :** Exécuter des commandes pour interagir avec le système Windows via Telegram.
- **Gestion de fichiers :** Créer, supprimer et visualiser des fichiers système.
- **Informations système :** Vérifier l'état du système, les informations matérielles et le répertoire actuel.
- **Interaction utilisateur :** Envoyer des messages de bienvenue et aider les utilisateurs à traiter les commandes facilement.
- **Contrôle à distance :** Se déconnecter, verrouiller, redémarrer ou éteindre l'ordinateur à distance.

## 📦 Prérequis
Avant de commencer, assurez-vous de vérifier ce qui suit :
- Système d'exploitation Windows
- Un bot sur Telegram qui peut recevoir des notifications.
- Modules PowerShell nécessaires installés :
  - `Microsoft.PowerShell.Security`
  - `Microsoft.PowerShell.Utility`
  - `NetworkConnectivityStatus`
  - `NetworkSwitchManager`

## ⚙️ Installation
1. **Cloner le dépôt :**
    ```git clone https://github.com/HackResist/Shell-X-Bot.git```

2. **Configurer le bot :** Allez sur `bot-father` pour créer un bot et vérifiez l'ID de chat avec `get chat id`.
3. **Configurer le token du bot et l'ID de chat :** Ouvrez le script et remplacez $botToken et $chatID par le token du bot Telegram et l'ID de chat.

4. **Ajuster la politique d'exécution :** Exécutez la commande suivante dans PowerShell pour autoriser l'exécution des scripts :
```Set-ExecutionPolicy RemoteSigned -Scope Process -Force```
5. **Exécuter le script :** Exécutez le script dans le terminal PowerShell : `.\path-of-script\YourScriptName.ps1`

## 🛠️ Commandes disponibles
- `/start`:👋 Affiche le message de commande.

- `/createfile <file_path> <content>`: 📝 Crée un fichier avec le contenu spécifié.

- `/removefile <file_path>`:🗑️ Supprime le fichier spécifié.

- `/listfiles <Directory_path>`: 📂 Vérifie la liste des fichiers dans le répertoire spécifié.

- `/logoff`:🔐 Se déconnecte de l'utilisateur actuel.

- `/showmessage <content>`:💬 Affiche un message personnalisé dans la boîte de dialogue.

- `/lockcomputer`: 🔒 Verrouille l'ordinateur.

- `/shutdown [delay]`: ⏳ Éteint l'ordinateur en définissant un délai.

- `/restart`:🔄 Redémarre l'ordinateur.

- `/sysinfo`:💻 Vérifie les informations système.

- `/getcurrentdir`:📁 Vérifie le répertoire actuel dans lequel se trouve le fichier de script PowerShell.

- `/gethardwareinfo`:🖥️ Obtient des informations sur le matériel.

- `/gethistory`:📝 Obtient l'historique des commandes.

- `/clearhistory`: 🧹 Supprime l'historique des commandes.

- `/getsystemstatus`: 📊 Obtient l'état de la batterie, du CPU, de la RAM et du réseau.

- `/getip`: 🌐 Obtient l'adresse IP externe.

- `/getdevices`:🔌 Obtient des informations sur le matériel connecté.

- `/getopenedapplications`:📋 Vérifie la liste des applications en cours d'exécution.

- `/getuptime`: ⏱️ Vérifie le temps de fonctionnement du système.

- `/getstoragedetails`: 💾 Vérifie les informations sur les périphériques de stockage connectés.

- `/getfilecontent <file_path>`:📄 Obtient le contenu du fichier spécifié.

- `/runfile <file_path>`:🛠️ Exécute le fichier à partir du chemin spécifié.

- `/killprocess <process_id | application_name>`:❌ Termine le processus en cours par ID ou nom.

- `/runprocess <exe_path> [File_path]`:▶️ Exécute le fichier exécutable avec des arguments optionnels.

## 📋 Description détaillée des commandes
Si vous avez des questions sur l'utilisation des commandes, consultez la [liste des commandes](/docs/command/command_fr-FR.md) et le fichier exemple.

## 🤝 Contribution
Les contributions sont toujours les bienvenues ! Si vous avez des suggestions d'améliorations ou de nouvelles fonctionnalités, forkez le dépôt et soumettez une demande de tirage.

## 📜 Licence
Ce projet est fourni sous la licence MIT. Pour plus de détails, consultez le fichier [LICENSE](/./LICENSE).

## 📞 Support
Si vous avez des questions ou avez besoin d'assistance, contactez-nous via **[Twitter](https://x.com/dev_lokesh_)**, **[LinkedIn](https://www.linkedin.com/in/lokeshchauhanapex/)** ou créez un problème dans le dépôt GitHub.
