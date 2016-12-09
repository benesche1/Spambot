#include <FF.au3>

Global $count = 0

Global $opfer = InputBox("Victim", "Name of the Victim")
Global $nachricht = InputBox("Message", "Message for the Victim")
Global $Anzahl = InputBox("Number", "Number of Messeges to Spam")

If _FFConnect() Then
	If _FFIsConnected() Then
		If _FFOpenURL("web.whatsapp.com") Then
			If _FFLoadWait() Then
				Sleep (10000)
				Send("{TAB}")
				Send("{TAB}")
				Sleep(1000)
				Send($opfer)
				Sleep(1000)
				Send("{ENTER}")
				Sleep(3000)
				While $count <= $Anzahl

					$count = $count + 1;
					Send($nachricht)
					Send("{ENTER}")
					Sleep(50)

				WEnd
				Else
					MsgBox(64, "Error", "Couldn't connect to FF!")
			EndIf
		EndIf
	EndIf
EndIf