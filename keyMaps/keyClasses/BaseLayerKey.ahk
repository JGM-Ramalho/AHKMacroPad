/**
 * This class defines the generic behaviour and methods that each of the "special"
 * keys should have.
 * 
 * This class also inherits from the BaseKey class, making sure that even the 
 * "special" keys have access to the "regular" generic logic if needed
 */
class BaseLayerKey extends BaseKey
{
  bShouldEnableLayer := true
  
  EnableLayer() {
  }

  ShouldEnableLayer {
    get {
      return this.bShouldEnableLayer
    }

    set {
      return
    }
  }

}