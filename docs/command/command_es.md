# 👉Descripción detallada de los comandos con ejemplos👈

## 📝 Crear archivo
`/createfile C:\Users\Down\Documents\notes.txt Hello, World!`

Crea un archivo llamado notes.txt en la ruta especificada con el contenido `Hello, World!`.

**Uso:** Crea un nuevo archivo en la ruta especificada e inserta el contenido proporcionado. Si el archivo ya existe, se sobrescribirá.

## 🗑️ Eliminar archivo
`/removefile C:\Users\Down\Documents\notes.txt`

Elimina el archivo notes.txt de la ruta especificada.

## 📂 Listar archivos
`/listfiles C:\Users\Lokesh\Documents`

**Uso:** Lista todos los archivos en la ruta del directorio especificado, para que puedas ver cuáles están disponibles.

## 🔐 Cerrar sesión
`/logoff`

**Uso:** Cierra sesión del usuario actual en la sesión de Windows.

## 💬 Mostrar mensaje personalizado
`/showmessage "This is a custom alert message."`

**Uso:** Muestra un cuadro de diálogo que contiene un mensaje personalizado proporcionado por el usuario.

## 🔒 Bloquear computadora
`/lockcomputer`

**Uso:** Bloquea la computadora, requiriendo que el usuario inicie sesión nuevamente para acceder al sistema.

## ⏳ Apagar computadora
- `/shutdown 60`: Apaga la computadora después de un retraso opcional en segundos (60).

- `/shutdown`: Apaga la computadora de inmediato.

## 🔄 Reiniciar computadora

`/restart`

**Uso:** Reinicia la computadora cerrando todas las aplicaciones y procesos.

## 💻 Información del sistema
`/sysinfo`

**Uso:** Muestra el año de construcción y el número de versión del sistema operativo.

## 📁 Directorio actual

`/getcurrentdir`

**Uso:** Obtiene el directorio actual en el que se encuentra el archivo.

## 🖥️ Información de hardware
`/gethardwareinfo`

**Uso:** Obtiene detalles sobre el hardware de la computadora, incluyendo el fabricante y el modelo.

## 📝 Historial de comandos

`/gethistory`

**Uso:** Obtiene el historial de comandos ejecutados en la sesión actual de PowerShell.

## 🧹 Borrar historial de comandos
`/clearhistory`

**Uso:** Elimina el historial de comandos de la sesión actual de PowerShell.

## 📊 Comprobar el estado de la batería, CPU, RAM y red

`/getsystemstatus`

**Uso:** Obtiene el estado actual de la batería, uso de CPU, uso de RAM y estado de conectividad de red.

## 🌐 Obtener dirección IP pública

`/getip`

**Uso:** Obtiene y muestra la dirección IP externa de la red actual.

## 🔌 Obtener información sobre hardware conectado

`/getdevices`

**Uso:** Lista todos los dispositivos de hardware conectados (por ejemplo, dispositivos USB, teclados, micrófonos).

## 📋 Listar todas las aplicaciones abiertas

`/getopenedapplications`

**Uso:** Lista todas las aplicaciones actualmente abiertas en el sistema.

## ⏱️ Comprobar tiempo de actividad del sistema

`/getuptime`

**Uso:** Muestra el tiempo que ha estado en funcionamiento el sistema desde el último arranque.

## 💾 Detalles de dispositivos de almacenamiento conectados

`/getstoragedetails`

**Uso:** Obtiene información sobre los dispositivos de almacenamiento conectados, incluyendo el espacio utilizado y disponible.

## 📄 Ver contenido de un archivo específico

`/getfilecontent C:\Users\Down\Documents\example.txt`

**Uso:** Obtiene y muestra el contenido del archivo en la ruta especificada.

## 🛠️ Ejecutar archivo especificando la ruta

`/runfile C:\Users\YourName\Documents\example.txt`

**Uso:** Abre el archivo especificado con la aplicación predeterminada.

## ❌ Terminar proceso en ejecución por ID o nombre

`/killprocess notepad` o `/killprocess 1243`

**Uso:** Termina un proceso en ejecución identificado por su ID de proceso o nombre.

Aquí, `1243` es el ID de proceso de una aplicación o proceso.

## ▶️ Ejecutar archivo ejecutable y pasar argumentos opcionales

`/runprocess C:\windows\notepad.exe C:\User\Down\Document\Hello.txt`

**Uso:** Ejecuta un archivo ejecutable y puede pasar opcionalmente argumentos o rutas de archivo a la ejecución del archivo.
