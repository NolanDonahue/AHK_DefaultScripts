#Requires AutoHotkey v2.0

/*
Executes script on startup for convenience
Startup execution is via the 'Startup' folder with a shortcut
"C:\Users\nolan\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

Table of Contents
1. Run Shortcut Menu
2. Run Bulk Script
*/

#Include ".\Bulk.ahk"

/* 1. Run Shortcut Menu */
Run ".\LNCHR-pub-master\LNCHR-Main.ahk"

/* 2. Run Bulk Script */
v2_Auto_Updater.run_once ;check for AHK updates

/* 3. Run Launch Gui */
Run ".\GuiLauncher.ahk"

/*
;Automatically create a script in the startup folder with a shortcut to this AHK script
FileCreateShortcut, %A_ScriptFullPath%, %A_Startup%\startupShortcut.lnk
*/