killall -9 screen;
rm -rf VAISWeb;
git clone https://github.com/slapglif/VAISWeb.git;
cd VAISWeb;
screen -dmS VAIS python3 VegaWeb.py
