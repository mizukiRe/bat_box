@echo off

rem 対象のファイル名を指定する
set Arr[0]=test.zip
set Arr[1]=test1.zip
set Arr[2]=test2.zip

rem コピー元のフォルダ名をフルパスで指定
set copyOriginFillPass=C:\

rem コピー先のフォルダ名をフルパスで指定
set copyPreviousFillPass=C:\

set I=0
:LOOP
call set Flag=%%Arr[%I%]%%
if defined Flag (
    echo I=%I%, Arr[I]=%Flag%
    set /a I=%I% + 1
    echo %copyOriginFillPass%\%Flag% %copyPreviousFillPass%
    copy /y %copyOriginFillPass%\%Flag% %copyPreviousFillPass%
    rem 環境によってLhaplusへのパスが違うので適宜変更する
    "C:\Program Files (x86)\Lhaplus\Lhaplus.exe" /oh %copyPreviousFillPass%\%Flag%
    goto LOOP
)

