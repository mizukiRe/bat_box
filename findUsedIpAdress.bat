rem @echo off
rem /s�i�V���b�g�_�E���j/r�i�ċN���j/l�i���O�I�t�j
rem /t �V���b�g�_�E���܂ł̕b�����w��
@setlocal enabledelayedexpansion
@set num=1
@if %num% == 1 (
    set /a num+=1
    echo !num!
)
@pause
set baseIpAdress = aaaaaaaa0.1.54.

echo "������������������������������"
echo %baseIpAdress%

for /l %%i in (0,1,3) do (

ping -w 1 -n 1 %baseIpAdress%%%i && arp -a %baseIpAdress%%%i
rem ping -w 1 -n 1 10.1.54.%%i && arp -a 10.1.54.%%i

)

arp -a

pause