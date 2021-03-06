Option Explicit

' マウス操作用DLL「MouseEmulator.dll」を同じディレクトリに設置すること
' 入手先：http://jscript.zouri.jp/Source/MouseCtrl.html

Dim objWShell
Set objWShell = CreateObject("WScript.Shell")

Dim Win
Set Win = WScript.CreateObject("Shell.Application")

WScript.Sleep 3000 ' 3秒遅延

' 画面をすべて最小化する
Win.MinimizeAll

Dim openFilePass
' ファイルパスを指定する
openFilePass = "ここにフルパス"

' FileProtocolHandlerで既定のプログラムで開く
objWShell.Run "rundll32.exe url.dll,FileProtocolHandler " + openFilePass, 1, False

WScript.Sleep 600000 ' 起動までの待機時間を入力単位はms ( 1000ms = 1秒 )

'DLLファイルから関数を呼び出し、マウスポインタの位置を設定
objWShell.Run( "rundll32.exe MouseEmulator.dll, _SetMouseXY@16 150, 10" )

WScript.Sleep 1000

'左クリック
objWShell.Run( "rundll32.exe MouseEmulator.dll, _ClickLeft@16" )

WScript.Sleep 3000

objWShell.SendKeys "%{F4}"

WScript.Sleep 3000

' オブジェクトを破棄
Set objWShell = Nothing
Set Win= Nothing