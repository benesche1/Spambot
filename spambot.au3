#include <FF.au3> ; Muss immer da sein

Global $count = 0

Global $opfer = InputBox("Opfer", "Name des Opfers");Iput des Opfers
Global $nachricht = InputBox("Nachricht", "Nachricht an das Opfer");Input der Nachricht
Global $Anzahl = InputBox("Anzahl", "Anzahl der Nachrichten");Anzahl der zu Spamenden Nachrichten

If _FFConnect() Then;verbindet FF mit Bot
	If _FFIsConnected() Then ; Wenn FireFox nun verbunden ist
		If _FFOpenURL("web.whatsapp.com") Then;öffnet Whatsappweg
			If _FFLoadWait() Then;wartet das es geladen ist
				Sleep (10000) ;das es auch wirklich geladen ist
				Send("{TAB}")
				Send("{TAB}");navigiert in suchleiste
				Sleep(1000);das man auch wirklich in der leiste ist
				Send($opfer);gibt opfer ein
				Sleep(1000);das opfer auch eingegeben ist
				Send("{ENTER}");wählt opfer aus
				Sleep(3000);das der chat auch offen ist bevor los gespämt wird
<<<<<<< HEAD
				While $count <= $Anzahl;das nur bestimmt anzahl von nachrichten gespamt wird

					$count = $count + 1;das die schleife auch aufhört
					Send($nachricht)
					Send("{ENTER}");eigentliches senden
					Sleep(50);gegen zu starke lags

				WEnd
				Else ;  Wenn FF nicht verbunden ist...
					MsgBox(64, "Ein Fehler ist aufgetreten", "Eine Verbindung mit dem Mozilla FireFox war nicht möglich!")
=======

				While $count <= $Anzahl;das nur bestimmt anzahl von nachrichten gespamt wird

					$count = $count + 1;das die schleife auch aufhört
					Send($nachricht)
					Send("{ENTER}");eigentliches senden
					Sleep(50);gegen zu starke lags

				WEnd
			Else ;  Wenn FF nicht verbunden ist...
				MsgBox(64, "Ein Fehler ist aufgetreten", "Eine Verbindung mit dem Mozilla FireFox war nicht möglich!")
>>>>>>> spambot-v-eng
			EndIf
		EndIf
	EndIf
EndIf