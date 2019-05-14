#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseX64=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GUIConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
$gui = GUICreate ( "Mouse Position Data", 140, 18, Default, Default, Default, $WS_EX_TOPMOST )
Local $mouse_data = "default"
$label = GUICtrlCreateLabel ( $mouse_data, 2, 2, 136, 18, $SS_CENTER )
GUISetState(@SW_SHOW)
While True
	Switch GUIGetMsg ( )
		Case $GUI_EVENT_MOUSEMOVE
			$mouse_data = MouseGetPos (  )
			GUICtrlSetData ( $label, $mouse_data[0]&", "&$mouse_data[1] )
		Case $GUI_EVENT_CLOSE
			ExitLoop
	EndSwitch
WEnd