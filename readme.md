SSH Script Executor for Modem
Deskripsi
Skrip ini memberikan fungsionalitas untuk menjalankan skrip (watchloop.sh) secara remote pada modem melalui SSH.

Kredensial
Username SSH: root
Password SSH: admin
IP Modem: 192.168.10.254
Path Skrip: /root/watchloop.sh
Fungsi run_script_on_modem
Fungsi ini memfasilitasi eksekusi skrip pada modem melalui SSH dengan penggunaan kredensial yang disediakan.

Langkah-langkah:
Menggunakan sshpass untuk otentikasi SSH secara non-interaktif.
Terhubung ke modem menggunakan ssh dengan kredensial yang diberikan.
Menjalankan skrip (watchloop.sh) pada modem.
Menjalankan perintah di latar belakang.
Menyimpan ID proses (PID) dari perintah SSH.
Penggunaan
Skrip ini dapat dieksekusi untuk menjalankan skrip pada modem secara remote.
