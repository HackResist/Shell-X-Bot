# Shell-X-Bot🤖
## Resumen
Este bot permite a los usuarios ejecutar varios comandos a través de Telegram para aprovechar las funciones de PowerShell y gestionar el entorno de Windows.

>⭐ ¡Si este proyecto te resulta útil, por favor, dale una estrella!

## 🚀 Funciones
- **Ejecución de comandos:** Ejecutar comandos para interactuar con el sistema Windows a través de Telegram.
- **Gestión de archivos:** Crear, eliminar y ver archivos del sistema.
- **Información del sistema:** Verificar el estado del sistema, información del hardware y el directorio actual.
- **Interacción del usuario:** Enviar mensajes de bienvenida y apoyar a los usuarios para que puedan procesar comandos fácilmente.
- **Control remoto:** Cerrar sesión, bloquear, reiniciar o apagar el ordenador de forma remota.

## 📦 Requisitos previos
Antes de comenzar, asegúrate de verificar lo siguiente:
- Sistema operativo Windows
- Un bot en Telegram que pueda recibir notificaciones.
- Módulos de PowerShell necesarios instalados:
  - `Microsoft.PowerShell.Security`
  - `Microsoft.PowerShell.Utility`
  - `NetworkConnectivityStatus`
  - `NetworkSwitchManager`

## ⚙️ Instalación
1. **Clonar el repositorio:**
    ```git clone https://github.com/HackResist/Shell-X-Bot.git```

2. **Configurar el bot:** Ve a `bot-father` para crear un bot y verifica el ID del chat con `get chat id`.
3. **Configurar el token del bot y el ID del chat:** Abre el script y reemplaza $botToken y $chatID con el token del bot de Telegram y el ID del chat.

4. **Ajustar la política de ejecución:** Ejecuta el siguiente comando en PowerShell para permitir la ejecución de scripts:
```Set-ExecutionPolicy RemoteSigned -Scope Process -Force```
5. **Ejecutar el script:** Ejecuta el script en la terminal de PowerShell: `.\path-of-script\YourScriptName.ps1`

## 🛠️ Comandos disponibles
- `/start`:👋 Muestra el mensaje de comando.

- `/createfile <file_path> <content>`: 📝 Crea un archivo con el contenido especificado.

- `/removefile <file_path>`:🗑️ Elimina el archivo especificado.

- `/listfiles <Directory_path>`: 📂 Verifica la lista de archivos en el directorio especificado.

- `/logoff`:🔐 Cierra la sesión del usuario actual.

- `/showmessage <content>`:💬 Muestra un mensaje personalizado en el cuadro de diálogo.

- `/lockcomputer`: 🔒 Bloquea el ordenador.

- `/shutdown [delay]`: ⏳ Apaga el ordenador estableciendo un retraso.

- `/restart`:🔄 Reinicia el ordenador.

- `/sysinfo`:💻 Verifica la información del sistema.

- `/getcurrentdir`:📁 Verifica el directorio actual en el que se encuentra el archivo de script de PowerShell.

- `/gethardwareinfo`:🖥️ Obtiene información del hardware.

- `/gethistory`:📝 Obtiene el historial de comandos.

- `/clearhistory`: 🧹 Elimina el historial de comandos.

- `/getsystemstatus`: 📊 Obtiene el estado de la batería, CPU, RAM y red.

- `/getip`: 🌐 Obtiene la dirección IP externa.

- `/getdevices`:🔌 Obtiene información sobre el hardware conectado.

- `/getopenedapplications`:📋 Verifica la lista de aplicaciones en ejecución.

- `/getuptime`: ⏱️ Verifica el tiempo de actividad del sistema.

- `/getstoragedetails`: 💾 Verifica la información de los dispositivos de almacenamiento conectados.

- `/getfilecontent <file_path>`:📄 Obtiene el contenido del archivo especificado.

- `/runfile <file_path>`:🛠️ Ejecuta el archivo desde la ruta especificada.

- `/killprocess <process_id | application_name>`:❌ Finaliza el proceso en ejecución por ID o nombre.

- `/runprocess <exe_path> [File_path]`:▶️ Ejecuta el archivo ejecutable con argumentos opcionales.

## 📋 Descripción detallada de comandos
Si tienes preguntas sobre el uso de comandos, consulta la [lista de comandos](/docs/command/command_es.md) y el archivo de ejemplo.

## 🤝 Contribuir
¡Las contribuciones son siempre bienvenidas! Si tienes sugerencias de mejoras o nuevas funciones, forkea el repositorio y envía una solicitud de extracción.

## 📜 Licencia
Este proyecto se proporciona bajo la licencia MIT. Para más detalles, consulta el archivo [LICENSE](/./LICENSE).

## 📞 Soporte
Si tienes preguntas o necesitas asistencia, contáctanos a través de **[Twitter](https://x.com/dev_lokesh_)**, **[LinkedIn](https://www.linkedin.com/in/lokeshchauhanapex/)** o crea un problema en el repositorio de GitHub.
