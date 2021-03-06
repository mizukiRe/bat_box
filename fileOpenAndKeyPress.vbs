Option Explicit

' 参考URL
' アプリの実行（Run）：https://qiita.com/zkangaroo/items/990875dd6470902f2c7a
' キー入力(SendKyes)：http://wsh.style-mods.net/ref_wshshell/sendkeys.htm
' URLを規定のプログラムで開く方法： http://piyopiyocs.blog115.fc2.com/blog-entry-758.html
' 特殊フォルダのパス生成：https://excelwork.info/excel/specialfolder/

Const vbHide = 0             'ウィンドウを非表示
Const vbNormalFocus = 1      '通常のウィンドウで、最前面のウィンドウ
Const vbMinimizedFocus = 2   '最小化で、最前面のウィンドウ
Const vbMaximizedFocus = 3   '最大化で、最前面のウィンドウ
Const vbNormalNoFocus = 4    '通常のウィンドウで、最前面ではない
Const vbMinimizedNoFocus = 6 '最小化で、最前面にはならない

Dim objWShell
Set objWShell = CreateObject("WScript.Shell")

Dim openFilePass
openFilePass = "ファイルパスを指定する"

' FileProtocolHandler で規定のプログラムで起動する
objWShell.Run "rundll32.exe url.dll,FileProtocolHandler " + openFilePass, vbNormalFocus, False

' ms なので 1000 = 1秒
WScript.Sleep 50000 ' 50秒遅延

objWShell.SendKeys "好きなキーを入力"

WScript.Sleep 10000 ' 10秒遅延

objWShell.SendKeys "好きなキーを入力"

' オブジェクトを破棄
Set objWShell = Nothing