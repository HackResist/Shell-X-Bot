# Shell-X-Bot🤖
## Ringkasan
Bot ini memungkinkan pengguna untuk mengeksekusi berbagai perintah di Telegram untuk memanfaatkan kemampuan PowerShell dalam mengelola lingkungan Windows.

>⭐ Jika proyek ini berguna, silakan beri bintang!

## 🚀 Fitur
- **Eksekusi Perintah:** Menjalankan perintah untuk berinteraksi dengan sistem Windows melalui Telegram.
- **Manajemen File:** Membuat, menghapus, dan melihat file sistem.
- **Informasi Sistem:** Memeriksa status sistem, informasi perangkat keras, dan direktori saat ini.
- **Interaksi Pengguna:** Mengirim pesan sambutan dan membantu pengguna dalam mengelola perintah dengan mudah.
- **Kontrol Jarak Jauh:** Log off, kunci, restart, atau matikan komputer dari jarak jauh.

## 📦 Prasyarat
Sebelum memulai, pastikan Anda memiliki hal berikut:
- Sistem operasi Windows
- Bot yang dapat menerima notifikasi di Telegram.
- Modul PowerShell yang diperlukan telah diinstal:
  - `Microsoft.PowerShell.Security`
  - `Microsoft.PowerShell.Utility`
  - `NetworkConnectivityStatus`
  - `NetworkSwitchManager`

## ⚙️ Instalasi
1. **Klon Repository:**
    `git clone https://github.com/HackResist/Shell-X-Bot.git`

2. **Atur Bot:** Pergi ke `bot-father` untuk membuat bot dan periksa ID obrolan dengan `get chat id`.
3. **Atur Token Bot dan ID Obrolan:** Buka skrip dan ganti $botToken dan $chatID dengan token bot Telegram dan ID obrolan.

4. **Sesuaikan Kebijakan Eksekusi:** Jalankan perintah berikut di PowerShell untuk mengizinkan eksekusi skrip:
```Set-ExecutionPolicy RemoteSigned -Scope Process -Force```
5. **Jalankan Skrip:** Jalankan skrip di terminal PowerShell: `.\path-of-script\YourScriptName.ps1`

## 🛠️ Perintah yang Tersedia
- `/start`:👋 Menampilkan pesan perintah.

- `/createfile <file_path> <content>`: 📝 Membuat file dengan konten yang ditentukan.

- `/removefile <file_path>`:🗑️ Menghapus file yang ditentukan.

- `/listfiles <Directory_path>`: 📂 Memeriksa daftar file di direktori yang ditentukan.

- `/logoff`:🔐 Melakukan log off pengguna saat ini.

- `/showmessage <content>`:💬 Menampilkan pesan khusus di kotak dialog.

- `/lockcomputer`: 🔒 Mengunci komputer.

- `/shutdown [delay]`: ⏳ Mematikan komputer dengan pengaturan penundaan.

- `/restart`:🔄 Menghidupkan kembali komputer.

- `/sysinfo`:💻 Memeriksa informasi sistem.

- `/getcurrentdir`:📁 Memeriksa direktori saat ini di mana file skrip PowerShell berada.

- `/gethardwareinfo`:🖥️ Mendapatkan informasi perangkat keras.

- `/gethistory`:📝 Mengambil riwayat perintah.

- `/clearhistory`: 🧹 Menghapus riwayat perintah.

- `/getsystemstatus`: 📊 Mendapatkan status baterai, CPU, RAM, dan jaringan.

- `/getip`: 🌐 Mendapatkan alamat IP eksternal.

- `/getdevices`:🔌 Mendapatkan informasi perangkat keras yang terhubung.

- `/getopenedapplications`:📋 Memeriksa daftar aplikasi yang sedang berjalan.

- `/getuptime`: ⏱️ Memeriksa waktu aktif sistem.

- `/getstoragedetails`: 💾 Memeriksa informasi perangkat penyimpanan yang terhubung.

- `/getfilecontent <file_path>`:📄 Mendapatkan konten file yang ditentukan.

- `/runfile <file_path>`:🛠️ Menjalankan file dengan jalur yang ditentukan.

- `/killprocess <process_id | application_name>`:❌ Menghentikan proses yang berjalan dengan ID atau nama.

- `/runprocess <exe_path> [File_path]`:▶️ Menjalankan file eksekusi dengan argumen opsional.

## 📋 Deskripsi Perintah Detail
Jika Anda memiliki pertanyaan tentang penggunaan perintah, silakan merujuk ke [daftar perintah](/docs/command/command_id.md) dan file contoh.

## 🤝 Kontribusi
Kontribusi selalu disambut! Jika Anda memiliki saran untuk perbaikan atau fitur tambahan, silakan fork repositori dan ajukan permintaan tarik.

## 📜 Lisensi
Proyek ini disediakan di bawah lisensi MIT. Untuk informasi lebih lanjut, lihat file [LICENSE](/./LICENSE).

## 📞 Dukungan
Jika Anda memiliki pertanyaan atau membutuhkan dukungan, silakan hubungi melalui **[Twitter](https://x.com/dev_lokesh_)**, **[LinkedIn](https://www.linkedin.com/in/lokeshchauhanapex/)** atau buat masalah di repositori GitHub.
