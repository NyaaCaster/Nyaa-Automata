echo "setup tools"
sudo apt update -y
sudo apt install python3 python3-pip -y
python3 -m pip install --upgrade pip
curl https://jsd.cdn.zzko.cn/gh/NyaaCaster/Nyaa-Automata@main/requirements.txt -o requirements.txt
pip3 install -r requirements.txt

echo ""
echo "git proxy"
curl https://jsd.cdn.zzko.cn/gh/TheSpeedX/PROXY-List@master/http.txt -o proxy.txt

echo ""
echo "clone CC-attack"
git clone https://hub.yzuu.cf/Leeon123/CC-attack.git
cd CC-attack
echo "git proxy"
curl https://jsd.cdn.zzko.cn/gh/TheSpeedX/PROXY-List@master/http.txt -o http.txt
cd ..

echo ""
echo "HydaelynAttack"
git clone https://hub.yzuu.cf/NyaaCaster/HydaelynAttack.git

echo ""
echo "overload"
git clone https://hub.yzuu.cf/7zx/overload.git
curl https://jsd.cdn.zzko.cn/gh/NyaaCaster/Nyaa-Automata@main/overload_p.py -o overload/overload_p.py
cd overload/
pip install -r requirements.txt
cd ..
