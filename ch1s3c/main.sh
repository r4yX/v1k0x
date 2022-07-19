ruta=$(pwd)

python3.7 -m pip install --upgrade pip
python3.7 -m pip install --upgrade Pillow
python3.7 -m pip install pyautogui

sudo mkdir /usr/bin/hb_records/
sudo cp hb.py /usr/bin/
sudo cp starter.py /usr/bin/
sudo cp setup.sh /usr/bin/
sudo chmod +x /usr/bin/hb.py
sudo chmod +x /usr/bin/starter.py
sudo chmod +x /usr/bin/setup.sh

sudo /./usr/bin/setup.sh $ruta

sudo apt install cmatrix
cmatrix