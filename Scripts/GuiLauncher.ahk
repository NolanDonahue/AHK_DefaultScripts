;Inspiration for GUI from LNCHR https://github.com/kalekje/LNCHR-pub
#Requires Autohotkey v2.0+
#SingleInstance
#WinActivateForce

/* 
Launcher for some common use AHK scripts on startup

Table of contents
1. Global
2. Variables
3. Functions
4. Gui Properties
5. Build Gui
6. Opening the Gui
7. Button Functions
*/

/* 1. Global */
global lngui_props := object() ;stores gui_props in an object
;TODO TraySetIcon("path to .ico")

lngui_props.show_commands_tips := True
lngui_props.query_autocomplete := True

/* 2. Variables */

/* 3. Functions */
;___properties and states
reset_lngui_props(mainoff := "main") { ;return to a factory state
    lngui_props.state := mainoff
}

is_lngui_state(state) { ;check state of gui
    return (lngui_props.state == state)
}

is_lngui_on() { ;check if gui is on
    return ! is_lngui_state("off")
}

set_lngui_state(state) { ;set state of gui
    lngui_props.state := state
}

;___Interacting with the Gui
close_lngui(*) {
    ToolTip()
    reset_lngui_props("off")
    lngui.Destroy()
}

/* TODO
lngui_activable() {;conditions to be met to allow the hotkey
    try {
        return !InStr(WinGetTitle("A"), "Remote Desktop")
    }
    return True
}
*/

windowFadeIn(transparency) {
    iter := 13
    Loop iter {
        WinSetTransparent abs(round((transparency*(A_Index/iter)))), lngui.Hwnd
        sleep(8)
    }
}

/* 4. Gui Properties */

lngui_props.title := "Launcher"
reset_lngui_props("off")

/* 5. Build Gui */

build_gui() {
    global lngui

    lngui := Gui()

    acccolor := "FFB900" ;accent color
    backcolor := "1d1f21" ;bg color
    common_text_lngui_opts := "xm w400 cc5c8c6 -E0x200"
    common_btn_lngui_opts := "xm w400 h70 y+20"

    lngui.Opt("AlwaysOnTop -SysMenu -caption +Border ")
    lngui.SetFont("s24", "boda")
    lngui.Title := lngui_props.title
    lngui.backColor := backcolor

    lngui._text := lngui.AddText(common_text_lngui_opts " c" acccolor, lngui_props.title)
    lngui._text.SetFont("")
    
    hBtnX := lngui.Add("Button", "xm+355 ym w40 h40 ", "X")
    hBtnX.Opt("Background2b0e0e")
    hBtnX.OnEvent("Click", close_lngui)

    lngui.SetFont("s14")
    
    btn1 := lngui.AddButton(common_btn_lngui_opts " c" acccolor, "&AutoHotKey")
    btn1.OnEvent("Click", AHK)
    btn1.Opt("")
    
    btn2 := lngui.AddButton(common_btn_lngui_opts " c" acccolor, "&Remote Desktop")
    btn2.OnEvent("Click", Remote)
    btn2.Opt("")

    ;btnEnd := lngui.AddButton(common_btn_lngui_opts " c" acccolor, "&Open All")
    ;btnEnd.OnEvent("Click", RunAll)
    ;btnEnd.Opt("")

    lngui.OnEvent("Escape", close_lngui)

    reset_lngui_props("main")
    lngui_props.click_exit := True

    lngui.Show("autosize")
    
    windowFadeIn(230)
    
}

/* 6. Opening the Gui */
build_gui()

/* 7. Button Functions */
runScript(path) {
    /*
    exists := DirExist(path)
    if exists {
        Run path
    }
    if not exists {
        close_lngui()
        error := MsgBox("File path not accessible, connect HDD", "Failed to Open", "4096")
        build_gui()
    }
    */
   Run path
   close_lngui()
}
AHK(*) {
    AHK := "../"
    runScript(AHK)
    close_lngui

}
Remote(*) {
    Remote := "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Remote Desktop.lnk"
    runScript(Remote)
    close_lngui

}

Suspend 0 ;re-enable hot keys