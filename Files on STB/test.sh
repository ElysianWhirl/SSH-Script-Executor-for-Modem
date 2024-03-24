#!/bin/bash

# Kredensial
username="root"
password="admin"
modem_ip="192.168.10.254"
script_path="/root/watchloop.sh"

# Fungsi untuk menjalankan skrip di modem
run_script_on_modem() {
    # Jalankan skrip di modem
    sshpass -p "$password" ssh -oHostKeyAlgorithms=+ssh-rsa "$username@$modem_ip" "sh $script_path" &
    ssh_pid=$!
}

# Panggil fungsi menjalankan skrip di modem
run_script_on_modem
