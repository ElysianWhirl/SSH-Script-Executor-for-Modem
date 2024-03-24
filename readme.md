

# SSH Script Executor for Modem

## Deskripsi
Skrip ini memberikan fungsionalitas untuk menjalankan skrip (`watchloop.sh`) secara remote pada modem melalui SSH.

## Kredensial
- **Username SSH**: `root`
- **Password SSH**: `admin`
- **IP Modem**: `192.168.10.254`
- **Path Skrip**: `/root/watchloop.sh`

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
