#SingleInstance force
#Persistent
#include lib\AutoHotInterception.ahk

; //// Hotkeys ////////////////////////////////////////////////////////////////

^Esc::
ExitApp


; //// Hotstrings /////////////////////////////////////////////////////////////


; //// Numpad Mapping /////////////////////////////////////////////////////////

AHI := new AutoHotInterception()

numpadID := AHI.GetKeyboardId(0x1241, 0x1202)
AHI.SubscribeKeyboard(numpadID, true, Func("KeyEvent"))

KeyEvent(code, state) {
  If (code === 325) {
    SetNumLockState, On
    Return
  }
      

  If (state == 1) {   
    switch code {
      Case 309:
      key := "NumpadDiv"
      

      Case 55:
      key := "NumpadMult"
      

      Case 14:
      key := "Backspace"
      

      Case 71:
      key := "NumpadHome"
      

      Case 72:
      key := "NumpadUp"
      

      Case 73:
      key := "NumpadPgUp"
      

      Case 74:
      key := "NumpadSub"
      

      Case 75:
      key := "NumpadLeft"


      Case 76:
      key := "NumpadClear"
      

      Case 77:
      key := "NumpadRight"
      

      Case 78:
      key := "NumpadAdd"
      

      Case 79:
      key := "NumpadEnd"
      

      Case 80:
      key := "NumpadDown"
      

      Case 81:
      key := "NumpadPgDn"
      

      Case 82:
      key := "NumpadIns"
      

      Case 83:
      key := "NumpadDel"
      

      Case 284:
      key := "NumpadEnter"
      

      Case 325:
      ; key := NumLock
      Default:
      Return
    }

    MsgBox % "Pressed: " key
  }
}