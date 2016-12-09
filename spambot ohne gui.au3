#include <FF.au3> ; Muss immer da sein

Global $count = 0

Global $opfer = "Aufgaben" ;InputBox("Opfer", "Name des Opfers")
Global $nachricht = "Happy Birthday Schatz❤🎉🎁💋" ;InputBox("Nachricht", "Nachricht an das Opfer")


;_FFStart("https://web.whatsapp.com/") ; oder _FFConnect() wenn FireFox bereits offen sein sollte! Startet den FireFox mit der Seite "www.web.de" und wartet mit Fortführung des Scripts, bis geladen

If _FFConnect() Then
If _FFIsConnected() Then ; Wenn FireFox nun verbunden ist, dann...
	If _FFOpenURL("web.whatsapp.com") Then
	If _FFLoadWait() Then
	Sleep (10000) ; 1 Sekunde zum Verdeutlichen
	Send("{TAB}")
	Send("{TAB}")
	Sleep(1000)
	Send($opfer)
	Sleep(1000)
	Send("{ENTER}")
	Sleep(3000)
	While $count < 100



	$count = $count + 1
	Send($nachricht)
	Send("{ENTER}")
	Sleep(500)

	WEnd
	Else ;  Wenn FF nicht verbunden ist...
	MsgBox(64, "Ein Fehler ist aufgetreten", "Eine Verbindung mit dem Mozilla FireFox war nicht möglich!")
	EndIf
EndIf
EndIf
EndIf