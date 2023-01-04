echo "setup tools"
apt update -y
apt install git vim zip python3 python3-pip -y
python3 -m pip install --upgrade pip
curl https://nyaacaster.github.io/Nyaa-Automata/requirements.txt -o requirements.txt
pip3 install -r requirements.txt

echo ""
echo "git proxy"
curl https://raw.githubusercontent.com/TheSpeedX/SOCKS-List/master/http.txt -o proxy.txt

echo ""
echo "clone CC-attack"
git clone https://github.com/Leeon123/CC-attack.git

echo ""
echo "HydaelynAttack"
git clone https://github.com/NyaaCaster/HydaelynAttack.git