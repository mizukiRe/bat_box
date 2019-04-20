@echo off
cd /d %~dp0

set copyFileName="YYYYMMDD.txt"
set bkFolderName="aaaaaaa"
set bkfileName="bbb"

for /f "tokens=1-3 delims=/" %%a in ("%date%") do (
	mkdir %bkFolderName%\%%a\%%b
	copy YYYYMMDD.txt %bkFolderName%\%%a\%%b\%%a%%b%%c%bkfileName%.BAK
)
