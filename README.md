# Nyaa:Automata ![](https://img.shields.io/github/stars/NyaaCaster/HydaelynAttack?style=social)
## 菜鸟级CC+DDOS自动打击部署教程

*制作工具是人类于其他动物的区别……但如何使用工具是人和人的区别……*

## 前言

这只是为了维护艾欧泽亚不受钓鱼诈骗网站干涉而定制的自动打击策略，故很多参数写死定向打击特定网站，虽然根据实际情况，有能力编辑者脚本中最好自己维护打击目标，但请不要滥用于其他途径。

## 环境级工具

- [x] Python3

- [x] Python3-pip
- [x] [**TheSpeedX/PROXY-List**](https://github.com/TheSpeedX/PROXY-List)

- [x] [**Leeon123/CC-attack**](https://github.com/Leeon123/CC-attack)

- [x] [**7zx/overload**](https://github.com/7zx/overload)

- [x] [**NyaaCaster/HydaelynAttack**](https://github.com/NyaaCaster/HydaelynAttack)


## 版本更新说明
- 此前过于细节的进行了原理和操作说明，对一些朋友来说过于繁琐，现开始使用一键式部署和一键式执行方案

## 安装
```shell
git clone https://github.com/NyaaCaster/Nyaa-Automata.git
cd Nyaa-Automata
bash setup-ubuntu.sh
```

- 因为语言格式不同，提供了ubuntu/debian系、countos/red hat系、termux系三种操作系统的sh文件
- windows系统需要自己预装git和python3，并配置环境变量，建议自强

## 单次执行

```shell
bash attack.sh
```

- windows系统，在已经配置过python3环境变量的情况下，可以直接执行attack.cmd
- 如果遇到git拉取和proxy文件拉取遇到网络问题，请自行解决梯子问题

## 备注：

1. HydaelynAttack是个ddos工具，流量开销大，每轮攻击12M，计费流量的自己规划好开销，我的aws服务器曾经一个月无脑挂机烧掉了$59的流量费用
2. cc-attack基于proxy工作，不使用[**TheSpeedX/PROXY-List**](https://github.com/TheSpeedX/PROXY-List)的proxy的话，也可以自己换成其他的，但必须要有proxy才能工作
3. attack脚本为一次性执行脚本，如果要周期性自动执行，需要进行执行计划部署


## 部署订制执行计划
```shell
crontab -e
```
- (姑且扫盲一下vim的操作）进入文件后，方向箭移动光标到要修改的地方（这里移动到最末行最末尾）按 i 进入编辑模式

## 插入的计划任务
```shell
H/20 * * * * bash ~/Nyaa-Automata/attack.sh
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
