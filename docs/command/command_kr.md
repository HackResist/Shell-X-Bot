# 👉명령어에 대한 자세한 설명과 예시👈

## 📝 파일 생성
`/createfile C:\Users\Down\Documents\notes.txt Hello, World!`

지정된 경로에 `Hello, World!` 라는 내용을 가진 notes.txt 파일을 생성합니다.

**사용법:** 지정된 경로에 새 파일을 생성하고, 주어진 내용을 삽입합니다. 파일이 이미 존재하면 덮어씁니다.

## 🗑️ 파일 제거
`/removefile C:\Users\Down\Documents\notes.txt`

지정된 경로에서 notes.txt 파일을 제거합니다.

## 📂 파일 목록
`/listfiles C:\Users\Lokesh\Documents`

**사용법:** 지정된 디렉토리 경로에 있는 모든 파일을 나열하여 사용할 수 있는 파일을 확인할 수 있습니다.

## 🔐 로그 오프
`/logoff`

**사용법:** 현재 Windows 세션에서 사용자를 로그오프합니다.

## 💬 사용자 지정 메시지 표시
`/showmessage "This is a custom alert message."`

**사용법:** 사용자가 제공한 사용자 지정 메시지가 포함된 대화 상자를 표시합니다.

## 🔒  컴퓨터 잠금
`/lockcomputer`

**사용법:** 컴퓨터를 잠그고, 다시 로그인해야 시스템에 액세스할 수 있습니다.

## ⏳ 컴퓨터 종료

 - `/shutdown 60` : 지정된 시간(60초) 후에 컴퓨터를 종료합니다.

 - `/shutdown` : 즉시 컴퓨터를 종료합니다.

## 🔄 컴퓨터 재시작

`/restart` 

**사용법:** 모든 애플리케이션 및 프로세스를 종료하고 컴퓨터를 재시작합니다.

## 💻 시스템 정보
`/sysinfo`

**사용법:** 시스템 운영 체제의 빌드 연도 및 번호를 확인합니다.

## 📁 현재 디렉토리

`/getcurrentdir` 

**사용법:** 파일이 위치한 현재 디렉토리를 가져옵니다.

## 🖥️ 하드웨어 정보
`/gethardwareinfo`

**사용법:** 컴퓨터의 제조사 및 모델 등 하드웨어 정보를 확인합니다.

##  📝 명령어 히스토리

`/gethistory`

**사용법:** 현재 PowerShell 세션에서 실행된 명령어 히스토리를 확인합니다.

## 🧹 명령어 히스토리 삭제
`/clearhistory`

**사용법:** 현재 PowerShell 세션에서 명령어 히스토리를 삭제합니다.

## 📊 배터리, CPU, RAM, 네트워크 상태 확인

`/getsystemstatus`

**사용법:** 배터리 상태, CPU 사용량, RAM 사용량, 네트워크 연결 상태를 확인합니다.

## 🌐 공용 IP 주소 확인

`/getip`

**사용법:** 현재 네트워크의 외부 IP 주소를 가져와 표시합니다.

## 🔌 연결된 하드웨어 정보 확인

`/getdevices`

**사용법:** 연결된 하드웨어 장치(예: USB 장치, 키보드, 마이크)를 나열합니다.

## 📋 모든 실행 중인 애플리케이션 나열

`/getopenedapplications`


**사용법:** 시스템에서 현재 열려 있는 모든 애플리케이션을 나열합니다.

## ⏱️ 시스템 가동 시간 확인

`/getuptime`

**사용법:** 마지막 부팅 이후로 시스템이 가동된 시간을 표시합니다.

## 💾 연결된 저장 장치 세부 정보

`/getstoragedetails`

**사용법:** 연결된 저장 장치의 사용 및 여유 공간 등의 정보를 확인합니다.

## 📄 지정된 파일 내용 확인

`/getfilecontent C:\Users\Down\Documents\example.txt`

**사용법:** 지정된 경로에 있는 파일의 내용을 가져와 표시합니다.


## 🛠️ 지정된 경로의 파일 실행

`/runfile C:\Users\YourName\Documents\example.txt`

**사용법:** 해당 파일을 기본 애플리케이션으로 엽니다.

## ❌  프로세스 ID 또는 이름으로 실행 중인 프로세스 종료

`/killprocess notepad` 또는 `/killprocess 1243`

**사용법:** 프로세스 ID 또는 이름으로 실행 중인 프로세스를 종료합니다.

여기서 `1243`은 애플리케이션 또는 프로세스의 프로세스 ID입니다.

## ▶️ 실행 파일 실행 및 선택적 인자 전달

`/runprocess C:\windows\notepad.exe C:\User\Down\Document\Hello.txt`

**사용법:** 실행 파일을 실행하고 선택적으로 인자나 파일 경로를 전달할 수 있습니다.









