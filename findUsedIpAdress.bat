rem @echo off
rem /s（シャットダウン）/r（再起動）/l（ログオフ）
rem /t シャットダウンまでの秒数を指定
@setlocal enabledelayedexpansion
@set num=1
@if %num% == 1 (
    set /a num+=1
    echo !num!
)
@pause
set baseIpAdress = aaaaaaaa0.1.54.

echo "あああああああああああああああ"
echo %baseIpAdress%

for /l %%i in (0,1,3) do (

ping -w 1 -n 1 %baseIpAdress%%%i && arp -a %baseIpAdress%%%i
rem ping -w 1 -n 1 10.1.54.%%i && arp -a 10.1.54.%%i

)

arp -a

pause