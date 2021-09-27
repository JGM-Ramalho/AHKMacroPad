/**
 * This class defines the generic behaviour and methods that each of the "regular"
 * keys should have
 */
class BaseKey 
{
  iKeyCode := ""
  sKeyName := ""

  ExecuteActionForLayer(iLayer) {
  }

  KeyName {
    get {
      return this.sKeyName
    }
    
    set {
      return
    }
  }

  KeyCode {
    get {
      return this.iKeyCode
    }

    set {
      return
    }
  }
}