@echo off
cd /d %~dp0

set copyFileName="バックアップを行うファイル名"
set bkFolderName="バックアップフォルダ名"
set bkfileName="バックアップ後のファイル名"

for /f "tokens=1-3 delims=/" %%a in ("%date%") do (
	mkdir %bkFolderName%\%%a\%%b
	copy YYYYMMDD.txt %bkFolderName%\%%a\%%b\%%a%%b%%c%bkfileName%.BAK
)
