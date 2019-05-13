@echo off

rem 255.1.255.のように入力
set baseIpAdress=xx.xx.xx.

echo %baseIpAdress%

for /l %%i in (0,1,99) do (

	ping -w 1 -n 1 %baseIpAdress%%%i && arp -a %baseIpAdress%%%i

)

arp -a

pause