# 👉 Penjelasan dan Contoh Perintah dengan Detail👈

## 📝 Buat File
`/createfile C:\Users\Down\Documents\notes.txt Hello, World!`

Membuat file notes.txt dengan isi `Hello, World!` di jalur yang ditentukan.

**Penggunaan:** Membuat file baru di jalur yang ditentukan dan memasukkan konten yang diberikan. Jika file sudah ada, akan ditimpa.

## 🗑️ Hapus File
`/removefile C:\Users\Down\Documents\notes.txt`

Menghapus file notes.txt dari jalur yang ditentukan.

## 📂 Daftar File
`/listfiles C:\Users\Lokesh\Documents`

**Penggunaan:** Mendaftarkan semua file yang ada di jalur direktori yang ditentukan agar Anda dapat melihat file mana yang tersedia.

## 🔐 Keluar
`/logoff`

**Penggunaan:** Mengeluarkan pengguna dari sesi Windows saat ini.

## 💬 Tampilkan Pesan Kustom
`/showmessage "This is a custom alert message."`

**Penggunaan:** Menampilkan dialog dengan pesan kustom yang diberikan oleh pengguna.

## 🔒 Kunci Komputer
`/lockcomputer`

**Penggunaan:** Mengunci komputer, sehingga Anda harus masuk kembali untuk mengakses sistem.

## ⏳ Matikan Komputer
- `/shutdown 60` : Mematikan komputer setelah waktu yang ditentukan (60 detik).

- `/shutdown` : Mematikan komputer secara langsung.

## 🔄 Restart Komputer
`/restart`

**Penggunaan:** Menutup semua aplikasi dan proses, kemudian merestart komputer.

## 💻 Informasi Sistem
`/sysinfo`

**Penggunaan:** Memeriksa tahun dan nomor build dari sistem operasi.

## 📁 Direktori Saat Ini
`/getcurrentdir`

**Penggunaan:** Mengambil direktori saat ini di mana file berada.

## 🖥️ Informasi Perangkat Keras
`/gethardwareinfo`

**Penggunaan:** Memeriksa informasi perangkat keras seperti produsen dan model komputer.

## 📝 Riwayat Perintah
`/gethistory`

**Penggunaan:** Menampilkan riwayat perintah yang dijalankan dalam sesi PowerShell saat ini.

## 🧹 Hapus Riwayat Perintah
`/clearhistory`

**Penggunaan:** Menghapus riwayat perintah dalam sesi PowerShell saat ini.

## 📊 Periksa Status Baterai, CPU, RAM, dan Jaringan
`/getsystemstatus`

**Penggunaan:** Memeriksa status baterai, penggunaan CPU, penggunaan RAM, dan status koneksi jaringan.

## 🌐 Periksa Alamat IP Publik
`/getip`

**Penggunaan:** Mengambil dan menampilkan alamat IP eksternal dari jaringan saat ini.

## 🔌 Periksa Informasi Perangkat Keras yang Terhubung
`/getdevices`

**Penggunaan:** Mendaftarkan perangkat keras yang terhubung (misalnya, perangkat USB, keyboard, mikrofon).

## 📋 Daftar Semua Aplikasi yang Sedang Berjalan
`/getopenedapplications`

**Penggunaan:** Mendaftarkan semua aplikasi yang saat ini terbuka di sistem.

## ⏱️ Periksa Uptime Sistem
`/getuptime`

**Penggunaan:** Menampilkan waktu sistem telah berjalan sejak booting terakhir.

## 💾 Detail Penyimpanan Perangkat yang Terhubung
`/getstoragedetails`

**Penggunaan:** Memeriksa informasi penggunaan dan ruang kosong dari perangkat penyimpanan yang terhubung.

## 📄 Periksa Konten File Tertentu
`/getfilecontent C:\Users\Down\Documents\example.txt`

**Penggunaan:** Mengambil dan menampilkan konten file di jalur yang ditentukan.

## 🛠️ Jalankan File di Jalur Tertentu
`/runfile C:\Users\YourName\Documents\example.txt`

**Penggunaan:** Membuka file tersebut dengan aplikasi default.

## ❌ Akhiri Proses Berdasarkan ID atau Nama
`/killprocess notepad` atau `/killprocess 1243`

**Penggunaan:** Mengakhiri proses yang sedang berjalan berdasarkan ID atau nama proses.

Di sini `1243` adalah ID proses untuk aplikasi atau proses tersebut.

## ▶️ Jalankan File Eksekusi dan Kirim Argumen Opsional
`/runprocess C:\windows\notepad.exe C:\User\Down\Document\Hello.txt`

**Penggunaan:** Menjalankan file eksekusi dan secara opsional mengirim argumen atau jalur file.
