#SingleInstance, Force

; These files define the logic that happens when a a key on the numpad is pressed
#Include keyMaps/keyClasses/BaseKey.ahk
#Include keyMaps/keyClasses/BaseLayerKey.ahk
#Include keyMaps/keyClasses/LayerKeys.ahk
#Include keyMaps/keyClasses/MacroKeys.ahk


; //// KeyCode Mappings ///////////////////////////////////////////////////////

; Mapping of each key code to its corresponding key name. 
; These names are used as class names in MacroKeys.ahk and LayerKeys.ahk 
oKeyCodeMappings :=
( LTrim Join
  {
    325: "NumLock",
    309: "NumpadDiv",
    55: "NumpadMult",
    14: "Backspace",
    71: "NumpadHome",
    72: "NumpadUp",
    73: "NumpadPgUp",
    74: "NumpadSub",
    75: "NumpadLeft",
    76: "NumpadClear",
    77: "NumpadRight",
    78: "NumpadAdd",
    79: "NumpadEnd",
    80: "NumpadDown",
    81: "NumpadPgDn",
    82: "NumpadIns",
    83: "NumpadDel",
    284: "NumpadEnter"
  }
)