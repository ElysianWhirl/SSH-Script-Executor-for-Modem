

# SSH Script Executor for Modem

## Deskripsi
Skrip ini memberikan fungsionalitas untuk menjalankan skrip (`watchloop.sh`) secara remote pada modem melalui SSH. Skrip ini telah diuji pada STB B860H V2 dan modem HSAIRPO CPE200.

## Kredensial
- **Username SSH**: `username`
- **Password SSH**: `password`
- **IP Modem**: `ip_your_modem`
- **Path Skrip**: `/path/to/watchloop.sh`

## Fungsi `run_script_on_modem`
Fungsi ini memfasilitasi eksekusi skrip pada modem melalui SSH dengan penggunaan kredensial yang disediakan.

### Langkah-langkah:
1. Menggunakan `sshpass` untuk otentikasi SSH secara non-interaktif.
2. Terhubung ke modem menggunakan `ssh` dengan kredensial yang diberikan.
3. Menjalankan skrip (`watchloop.sh`) pada modem.
4. Menjalankan perintah di latar belakang.
5. Menyimpan ID proses (PID) dari perintah SSH.

## Penggunaan
Skrip ini dapat dieksekusi untuk menjalankan skrip pada modem secara remote.

