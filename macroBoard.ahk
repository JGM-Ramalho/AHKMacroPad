#SingleInstance Force
#Persistent

; Rename configs-template.ahk and update it with your specific information
#include configs.ahk 
#include keyMaps\keyMappings.ahk
#include lib\AutoHotInterception.ahk


; Intercept keystrokes from the macro pad/board
oAHI := new AutoHotInterception()
iMacroPadID := oAHI.GetKeyboardId(MACRO_BOARD_VID, MACRO_BOARD_PID)
oAHI.SubscribeKeyboard(iMacroPadID, true, Func("handleKeystroke"))

; Init the board with the defaults values from configs.ahk
initMacroBoard()


; //// Hotkeys ////////////////////////////////////////////////////////////////

^Esc::
ExitApp

; //// Hotstrings /////////////////////////////////////////////////////////////


; //// AHI Callback ///////////////////////////////////////////////////////////

/**
 * Callback function for the SubscribeKeyboard() method of AHI.
 */
handleKeystroke(iCode, iState) {
  If (iCode == 325) {
    SetNumLockState, On
    Return
  }
  
  ; State = 1 is key down
  If (iState == 1) {
    getActionForKeyCode(iCode)
  }
}


; //// Global Functions ///////////////////////////////////////////////////////

/**
 * Get the default values from config.ahk
 */
initMacroBoard() {
  global

  iCurrentLayer := DEFAULT_LAYER
  sCurrentLayer := getCurrentLayerName()
  updateIcon()
}


/**
 * Instatiates a key class using the supplied key code and executes its action
 */
getActionForKeyCode(iCode) {
  global

  local sKeyName := oKeyCodeMappings[iCode], oKey := new %sKeyName%Key

  if (oKey.ShouldEnableLayer){
    oKey.EnableLayer()
  }
  else {
    oKey.ExecuteActionForLayer(iCurrentLayer)
  }

}


/**
 * Sets the value for the current layer
 */
enableLayer(iLayer) {
  global

  iCurrentLayer := iLayer

  local sTipTitle := "Toggled Layer: " getCurrentLayerName()
  local sTipBody  := "`n"
  
  updateIcon()

  If (NOTIFY_LAYER_CHANGES) {
    TrayTip, %sTipTitle%, %sTipBody%, 2, 17
  }
}


/**
 * Changes the tray icon depending on the active layer
 */
updateIcon() {
  global

  If (CHANGE_LAYER_ICONS) {
    local sIcon := ""

    switch iCurrentLayer {
      case 1:
        sIcon := LAYER1_ICONPATH

      case 2:
        sIcon := LAYER2_ICONPATH

      case 3:
        sIcon := LAYER3_ICONPATH
    }
    
    IfExist, %sIcon%
    
    Menu, Tray, Icon, %sIcon%
  }
}


/**
 * Retrives the current layer name from config.ahk
 */
getCurrentLayerName() {
  global

  return LAYER_NAMES[iCurrentLayer]
}