/** 
 * This file contains the classes that implement the actions for each of the "regular" macro 
 * pad/keyboard keys.
 * 
 * These classes inherit from the BaseKey class which defines the generic behaviour for all 
 * "regular" keys
 */

 
; //// NumpadHome //////////////////////////////////////////////////////////////

class NumpadHomeKey extends BaseKey
{
  iKeyCode := 71
  sKeyName := "NumpadHome"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {F13}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}


; //// NumpadUp //////////////////////////////////////////////////////////////

class NumpadUpKey extends BaseKey
{
  iKeyCode := 72
  sKeyName := "NumpadUp"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {F14}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}


; //// NumpadPgUp //////////////////////////////////////////////////////////////

class NumpadPgUpKey extends BaseKey
{
  iKeyCode := 73
  sKeyName := "NumpadPgUp"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {F15}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}

; //// NumpadSub //////////////////////////////////////////////////////////////

class NumpadSubKey extends BaseKey
{
  iKeyCode := 74
  sKeyName := "NumpadSub"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {Volume_Down}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}

; //// NumpadLeft //////////////////////////////////////////////////////////////

class NumpadLeftKey extends BaseKey
{
  iKeyCode := 75
  sKeyName := "NumpadLeft"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {F16}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}

; //// NumpadClear //////////////////////////////////////////////////////////////

class NumpadClearKey extends BaseKey
{
  iKeyCode := 76
  sKeyName := "NumpadClear"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {F17}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}

; //// NumpadRight //////////////////////////////////////////////////////////////

class NumpadRightKey extends BaseKey
{
  iKeyCode := 77
  sKeyName := "NumpadRight"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        ; Send {F18}
        Send {Media_Play_Pause}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}

; //// NumpadAdd //////////////////////////////////////////////////////////////

class NumpadAddKey extends BaseKey
{
  iKeyCode := 78
  sKeyName := "NumpadAdd"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {Volume_Up}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}

; //// NumpadEnd //////////////////////////////////////////////////////////////

class NumpadEndKey extends BaseKey
{
  iKeyCode := 79
  sKeyName := "NumpadEnd"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {F19}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}

; //// NumpadDown //////////////////////////////////////////////////////////////

class NumpadDownKey extends BaseKey
{
  iKeyCode := 80
  sKeyName := "NumpadDown"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {F20}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}

; //// NumpadPgDn //////////////////////////////////////////////////////////////

class NumpadPgDnKey extends BaseKey
{
  iKeyCode := 81
  sKeyName := "NumpadPgDn"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {F21}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}

; //// NumpadIns //////////////////////////////////////////////////////////////

class NumpadInsKey extends BaseKey
{
  iKeyCode := 82
  sKeyName := "NumpadIns"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {F22}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}

; //// NumpadDel //////////////////////////////////////////////////////////////

class NumpadDelKey extends BaseKey
{
  iKeyCode := 83
  sKeyName := "NumpadDel"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {F23}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}

; //// NumpadEnter //////////////////////////////////////////////////////////////

class NumpadEnterKey extends BaseKey
{
  iKeyCode := 284
  sKeyName := "NumpadEnter"

  ExecuteActionForLayer(iLayer) {
    switch iLayer {
      case 1:
        Send {F24}

      case 2:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"

      case 3:
        MsgBox % this.sKeyName " - Layer " iLayer " Action"
    }  
  }
}