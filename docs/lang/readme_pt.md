# Shell-X-Bot🤖
## Visão Geral
Este bot permite que os usuários executem vários comandos no Telegram para aproveitar a funcionalidade do PowerShell e gerenciar o ambiente Windows.

>⭐ Se este projeto for útil, por favor, dê uma estrela!

## 🚀 Funcionalidades
- **Execução de comandos:** Execução de comandos que interagem com o sistema Windows através do Telegram.
- **Gerenciamento de arquivos:** Criação, exclusão e visualização de arquivos do sistema.
- **Informações do sistema:** Verificação do estado do sistema, informações de hardware e diretório atual.
- **Interação do usuário:** Envio de mensagens de boas-vindas e assistência aos usuários na execução de comandos.
- **Controle remoto:** Logout, bloqueio, reinicialização ou desligamento do computador remotamente.

## 📦 Pré-requisitos
Antes de começar, verifique o seguinte:
- Sistema operacional Windows
- Bot que pode receber notificações no Telegram.
- Instalação dos módulos PowerShell necessários:
  - `Microsoft.PowerShell.Security`
  - `Microsoft.PowerShell.Utility`
  - `NetworkConnectivityStatus`
  - `NetworkSwitchManager`

## ⚙️ Instalação
1. **Clone o repositório:**
    `git clone https://github.com/HackResist/Shell-X-Bot.git`

2. **Configuração do bot:** Vá para o `bot-father`, crie um bot e verifique o ID do chat com `get chat id`.
3. **Configuração do token do bot e ID do chat:** Abra o script e substitua $botToken e $chatID pelo token do bot do Telegram e o ID do chat.

4. **Ajuste da política de execução:** Execute o seguinte comando no PowerShell para permitir a execução do script:
```Set-ExecutionPolicy RemoteSigned -Scope Process -Force```
5. **Execute o script:** Execute o script no terminal do PowerShell: `.\path-of-script\YourScriptName.ps1`

## 🛠️ Comandos disponíveis
- `/start`:👋 Exibir mensagem de comando.

- `/createfile <file_path> <content>`: 📝 Criar arquivo com o conteúdo especificado.

- `/removefile <file_path>`:🗑️ Excluir arquivo especificado.

- `/listfiles <Directory_path>`: 📂 Verificar a lista de arquivos no diretório especificado.

- `/logoff`:🔐 Logout do usuário atual.

- `/showmessage <content>`:💬 Exibir mensagem personalizada na caixa de diálogo.

- `/lockcomputer`: 🔒 Bloquear computador.

- `/shutdown [delay]`: ⏳ Desligar computador com um atraso configurado.

- `/restart`:🔄 Reiniciar computador.

- `/sysinfo`:💻 Verificar informações do sistema.

- `/getcurrentdir`:📁 Verificar o diretório atual onde o arquivo do script PowerShell está localizado.

- `/gethardwareinfo`:🖥️ Obter informações de hardware.

- `/gethistory`:📝 Obter o histórico de comandos.

- `/clearhistory`: 🧹 Excluir o histórico de comandos.

- `/getsystemstatus`: 📊 Obter status da bateria, CPU, RAM e rede.

- `/getip`: 🌐 Obter endereço IP externo.

- `/getdevices`:🔌 Obter informações sobre hardware conectado.

- `/getopenedapplications`:📋 Verificar a lista de aplicativos em execução.

- `/getuptime`: ⏱️ Verificar o tempo de atividade do sistema.

- `/getstoragedetails`: 💾 Verificar informações sobre dispositivos de armazenamento conectados.

- `/getfilecontent <file_path>`:📄 Obter o conteúdo do arquivo especificado.

- `/runfile <file_path>`:🛠️ Executar arquivo especificando o caminho.

- `/killprocess <process_id | application_name>`:❌ Encerrar processo em execução pelo ID ou nome.

- `/runprocess <exe_path> [File_path]`:▶️ Executar arquivo executável com argumentos opcionais.

## 📋 Descrição detalhada dos comandos
Se você tiver perguntas sobre o uso dos comandos, consulte a [lista de comandos](/docs/command/command_pt.md) e os arquivos de exemplo.

## 🤝 Contribuições
Contribuições são sempre bem-vindas! Se você tiver sugestões de melhorias ou novos recursos, faça um fork do repositório e envie um pull request.

## 📜 Licença
Este projeto é fornecido sob a Licença MIT. Para mais detalhes, consulte o arquivo [LICENSE](/./LICENSE).

## 📞 Suporte
Se você tiver perguntas ou precisar de suporte, entre em contato pelo **[Twitter](https://x.com/dev_lokesh_)**, **[LinkedIn](https://www.linkedin.com/in/lokeshchauhanapex/)** ou crie uma issue no repositório do GitHub.
