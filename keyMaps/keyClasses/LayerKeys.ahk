/** 
 * This file contains the classes that implement the actions for each of the "special" macro 
 * pad/keyboard keys.
 * 
 * These classes inherit from the BaseLayerKey class which defines the generic behaviour for all 
 * "special" keys
 */

; //// NumpadDiv //////////////////////////////////////////////////////////////

class NumpadDivKey extends BaseLayerKey
{
  iKeyCode := 309
  sKeyName := "NumpadDiv"

  EnableLayer() {
    enableLayer(1)
  }
}


; //// NumpadMult //////////////////////////////////////////////////////////////

class NumpadMultKey extends BaseLayerKey
{
  iKeyCode := 55
  sKeyName := "NumpadMult"

  EnableLayer() {
    enableLayer(2)
  }
}


; //// Backspace //////////////////////////////////////////////////////////////

class BackspaceKey extends BaseLayerKey
{
  iKeyCode := 14
  sKeyName := "Backspace"

  EnableLayer() {
    enableLayer(3)
  }
}