# 👉Explicação detalhada dos comandos e exemplos👈

## 📝 Criar arquivo
`/createfile C:\Users\Down\Documents\notes.txt Hello, World!`

Cria um arquivo chamado notes.txt com o conteúdo `Hello, World!` no caminho especificado.

**Uso:** Cria um novo arquivo no caminho especificado e insere o conteúdo fornecido. Se o arquivo já existir, será sobrescrito.

## 🗑️ Remover arquivo
`/removefile C:\Users\Down\Documents\notes.txt`

Remove o arquivo notes.txt no caminho especificado.

## 📂 Lista de arquivos
`/listfiles C:\Users\Lokesh\Documents`

**Uso:** Lista todos os arquivos no diretório especificado, permitindo verificar quais arquivos estão disponíveis.

## 🔐 Sair
`/logoff`

**Uso:** Faz o logout do usuário na sessão atual do Windows.

## 💬 Mostrar mensagem personalizada
`/showmessage "This is a custom alert message."`

**Uso:** Exibe uma caixa de diálogo contendo a mensagem personalizada fornecida pelo usuário.

## 🔒 Bloquear computador
`/lockcomputer`

**Uso:** Bloqueia o computador; é necessário fazer login novamente para acessar o sistema.

## ⏳ Desligar computador
- `/shutdown 60` : Desliga o computador após o tempo especificado (60 segundos).

- `/shutdown` : Desliga o computador imediatamente.

## 🔄 Reiniciar computador
`/restart`

**Uso:** Fecha todos os aplicativos e processos e reinicia o computador.

## 💻 Informações do sistema
`/sysinfo`

**Uso:** Verifica o ano e o número de versão do sistema operacional.

## 📁 Diretório atual
`/getcurrentdir`

**Uso:** Obtém o diretório atual onde o arquivo está localizado.

## 🖥️ Informações de hardware
`/gethardwareinfo`

**Uso:** Verifica informações de hardware, como fabricante e modelo do computador.

## 📝 Histórico de comandos
`/gethistory`

**Uso:** Verifica o histórico dos comandos executados na sessão atual do PowerShell.

## 🧹 Limpar histórico de comandos
`/clearhistory`

**Uso:** Limpa o histórico de comandos da sessão atual do PowerShell.

## 📊 Verificar status de bateria, CPU, RAM e rede
`/getsystemstatus`

**Uso:** Verifica o status da bateria, uso da CPU, uso da RAM e status da conexão de rede.

## 🌐 Verificar endereço IP público
`/getip`

**Uso:** Obtém e exibe o endereço IP externo da rede atual.

## 🔌 Verificar informações de hardware conectado
`/getdevices`

**Uso:** Lista os dispositivos de hardware conectados (por exemplo, dispositivos USB, teclados, microfones).

## 📋 Listar todos os aplicativos abertos
`/getopenedapplications`

**Uso:** Lista todos os aplicativos atualmente abertos no sistema.

## ⏱️ Verificar tempo de atividade do sistema
`/getuptime`

**Uso:** Exibe o tempo que o sistema está ativo desde a última inicialização.

## 💾 Detalhes sobre dispositivos de armazenamento conectados
`/getstoragedetails`

**Uso:** Verifica informações sobre o uso e o espaço disponível dos dispositivos de armazenamento conectados.

## 📄 Verificar o conteúdo de um arquivo especificado
`/getfilecontent C:\Users\Down\Documents\example.txt`

**Uso:** Obtém e exibe o conteúdo do arquivo no caminho especificado.

## 🛠️ Executar um arquivo em um caminho especificado
`/runfile C:\Users\YourName\Documents\example.txt`

**Uso:** Abre o arquivo com o aplicativo padrão.

## ❌ Encerrar processo por ID ou nome
`/killprocess notepad` ou `/killprocess 1243`

**Uso:** Encerra um processo em execução por ID ou nome.

Aqui, `1243` é o ID do processo do aplicativo ou processo.

## ▶️ Executar um arquivo executável e passar argumentos opcionais
`/runprocess C:\windows\notepad.exe C:\User\Down\Document\Hello.txt`

**Uso:** Executa o arquivo executável e pode passar argumentos ou caminhos de arquivos opcionalmente.
