@echo off
cd /d %~dp0
rem 指定したファイル名のファイルのバックアップファイルを生成する
rem ./YYYY/MM/[バックファイル名]の形式で生成される

rem バックアップするファイル名
set copyFileName="README.md"
rem バックアップフォルダ名
set bkFolderName="backup"
rem 生成するバックアップファイル名（先頭にYYYYMMDD_が付与される）
set bkfileName=".BAK"

for /f "tokens=1-3 delims=/" %%a in ("%date%") do (

	mkdir %bkFolderName%\%%a\%%b
	copy %copyFileName% %bkFolderName%\%%a\%%b\%%a%%b%%c"_"%bkfileName%
)
