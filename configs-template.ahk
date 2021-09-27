#SingleInstance Force

; //// Keyboard Vars //////////////////////////////////////////////////////////

; To find these values use the Monitor.ahk script inside the helpers folder

; (Optional) The VID and PID of the main keyboard
MAIN_BOARD_VID := <some-hex-value>
MAIN_BOARD_PID := <some-hex-value>

; The VID and PID of the macro keyboard
MACRO_BOARD_VID := <some-hex-value>
MACRO_BOARD_PID := <some-hex-value>


; //// Layer Configs //////////////////////////////////////////////////////////

; The layer that will be active when the script starts
DEFAULT_LAYER := 1

; Whether a windows notification should be shown when a layer change occurs
NOTIFY_LAYER_CHANGES := true

; The names of the layers to display on the windows notification
LAYER_NAMES := ["1", "2", "3"]


; //// Layer Icons ////////////////////////////////////////////////////////////

; Whether the system tray icon should be changed when a layer change occurs
CHANGE_LAYER_ICONS := true

; Path to the ico file that should be used to identify each layer on the system tray
LAYER1_ICONPATH := "icon/1.ico"
LAYER2_ICONPATH := "icon/2.ico"
LAYER3_ICONPATH := "icon/3.ico"