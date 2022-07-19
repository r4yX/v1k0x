root_verify=$(whoami)

function init_program() {
    echo -e "Do you want install dependences? >"; read
    python3.7 -m pip install pyautogui
    sudo apt-get install fswebcam

    sudo cp 0v53rber/cam_snap.py /usr/bin/
    sudo cp ch1s3c/hb.py /usr/bin/
    sudo cp f1ng3r5talk3r/keylogger.py /usr/bin/

    sudo chmod +x /usr/bin/cam_snap.py
    sudo mv /usr/bin/cam_snap.py /usr/bin/observer
    sudo chmod +x /usr/bin/hb.py
    sudo mv /usr/bin/hb.py /usr/bin/chisec
    sudo chmod +x /usr/bin/keylogger.py
    sudo mv /usr/bin/keylogger.py /usr/bin/fingerstalker
}
if [ $root_verify != "root" ]
then
    echo -e "[!] Debes ejecutar el instalador como root (super-usuario)"
else
    init_program