# Shell-X-Bot🤖
## 개요
이 봇은 사용자가 텔레그램에서 다양한 명령을 실행하여 PowerShell의 기능을 활용해 Windows 환경을 관리할 수 있도록 합니다.

>⭐ 이 프로젝트가 유용하다면 별을 눌러주세요!

## 🚀 기능
- **명령 실행:** 텔레그램을 통해 Windows 시스템과 상호작용할 수 있는 명령 실행.
- **파일 관리:** 시스템 파일을 생성, 삭제하고 볼 수 있음.
- **시스템 정보:** 시스템 상태, 하드웨어 정보, 현재 디렉토리 확인.
- **사용자 상호작용:** 환영 메시지를 보내고 사용자가 쉽게 명령을 처리할 수 있도록 지원.
- **원격 제어:** 원격으로 로그오프, 잠금, 재시작 또는 컴퓨터 종료.

## 📦 사전 요구 사항
시작하기 전에 다음 사항을 확인하세요:
- Windows 운영 체제
- 텔레그램에서 알림을 받을 수 있는 봇.
- 필요한 PowerShell 모듈 설치:
  - `Microsoft.PowerShell.Security`
  - `Microsoft.PowerShell.Utility`
  - `NetworkConnectivityStatus`
  - `NetworkSwitchManager`

## ⚙️ 설치
1. **저장소 클론:**
    `git clone https://github.com/HackResist/Shell-X-Bot.git`

2. **봇 설정:** `bot-father`로 가서 봇을 생성하고 `get chat id`로 채팅 ID를 확인.
3. **봇 토큰 및 채팅 ID 설정:** 스크립트를 열고 $botToken과 $chatID를 텔레그램 봇 토큰 및 채팅 ID로 교체하세요.

4. **실행 정책 조정:** PowerShell에서 다음 명령을 실행하여 스크립트 실행을 허용:
```Set-ExecutionPolicy RemoteSigned -Scope Process -Force```
5. **스크립트 실행:** PowerShell 터미널에서 스크립트를 실행하세요:`.\path-of-script\YourScriptName.ps1`

## 🛠️ 사용 가능한 명령어
- `/start`:👋 명령 메시지 표시.

- `/createfile <file_path> <content>`: 📝지정된 내용으로 파일 생성.

- `/removefile <file_path>`:🗑️ 지정된 파일 삭제.

- `/listfiles  <Directory_path>`: 📂지정된 디렉토리의 파일 목록 확인.

- `/logoff`:🔐 현재 사용자 로그오프.

- `/showmessage  <content>`:💬 사용자 지정 메시지를 대화 상자에 표시.

- `/lockcomputer`: 🔒 컴퓨터 잠금.

- `/shutdown [delay]`: ⏳지연 시간을 설정하여 컴퓨터 종료.

- `/restart`:🔄  컴퓨터 재시작.

- `/sysinfo`:💻 시스템 정보 확인.

- `/getcurrentdir`:📁 PowerShell 스크립트 파일이 위치한 현재 디렉토리 확인.

- `/gethardwareinfo`:🖥️ 하드웨어 정보 가져오기.

- `/gethistory`:📝 명령어 기록 가져오기.

- `/clearhistory`: 🧹 명령어 기록 삭제.

- `/getsystemstatus`: 📊 배터리, CPU, RAM, 네트워크 상태 가져오기.

- `/getip`: 🌐 외부 IP 주소 가져오기.

- `/getdevices`:🔌 연결된 하드웨어 정보 가져오기.

- `/getopenedapplications`:📋 실행 중인 애플리케이션 목록 확인.

- `/getuptime`: ⏱️ 시스템 가동 시간 확인.

- `/getstoragedetails`: 💾 연결된 저장 장치 정보 확인.

- `/getfilecontent <file_path>`:📄 지정된 파일 내용 가져오기.

- `/runfile <file_path>`:🛠️ 경로를 지정하여 파일 실행.

- `/killprocess <process_id | application_name>`:❌ ID 또는 이름으로 실행 중인 프로세스 종료.

- `/runprocess <exe_path> [File_path]`:▶️ 실행 파일을 선택적 인수와 함께 실행.

## 📋 상세 명령 설명
명령어 사용에 대한 질문이 있으시면 [명령어 목록](/docs/command/command_kr.md)과 예제 파일을 참고하세요.

## 🤝 기여
기여는 언제나 환영입니다! 개선 사항이나 추가 기능에 대한 제안이 있으시면 저장소를 포크하고 풀 리퀘스트를 제출하세요.

## 📜 라이선스
이 프로젝트는 MIT 라이선스 하에 제공됩니다. 자세한 내용은 [LICENSE](/./LICENSE) 파일을 참고하세요.

## 📞 지원
문의 사항이나 지원이 필요하다면 **[Twitter](https://x.com/dev_lokesh_)**, **[LinkedIn](https://www.linkedin.com/in/lokeshchauhanapex/)** 또는 GitHub 저장소에서 이슈를 생성하여 연락하세요.
