; Adapted from https://github.com/biggkanz/autoclick.ahk2
; general purpose autoclick script
; AutoHotkey_2.0-beta.3

#Requires AutoHotkey v2.0+
#maxthreadsperhotkey 2 ; allow one extra thread to break out of loops

A_MaxHotkeysPerInterval := 500 ;number of clicks before script breaks
A_HotkeyInterval := 1000 ;duration of clicks - if more than A_MaxHotKeysPerInterval are passed in the duration of the interval it breaks the script

global AutoClickIsEnabled := false ;False - Autoclicker is Off / True - Autoclicker is on
global ManualDepressIsEnabled := false
global key := ""
global autoClickEnableKey := "{PgUp}"
global toggleKeyEnableKey := "{PgDown}"
global diableKey := "{}"

;Common keys
global RShift := "{RShift}"
global LMouse := "{Click Left}"
global RMouse := "{Click Right}"
global Space := "{Space}"

setKey(keyStroke) {
    key := keyStroke
}

; AutoClick
autoClick(keyStroke)
{
	if (!AutoClickIsEnabled)
	{
		global AutoClickIsEnabled := true
		while (AutoClickIsEnabled)
		{
		Sleep 500
		Send keyStroke
		}
	}
	else
	{
		global AutoClickIsEnabled := false
	}
}

disableAutoClick()
{
	if(AutoClickIsEnabled)
	{
		global AutoClickIsEnabled := false
	}
}

~PgUp::autoClick(key)
~LButton::disableAutoClick()

;Press and unpress a button ----------------------------------
toggleKey(keyStroke)
{
    state := GetKeyState(keyStroke)
	if (!ManualDepressIsEnabled)
	{
		global ManualDepressIsEnabled := true
		while (ManualDepressIsEnabled)
		{
		Sleep 500
        switch state {
            case state == "Up":
    		    Send (keyStroke, "Up")
            case state =="Down":
                Send (keyStroke, "Down")
            default:
                Send (keyStroke, "Down")            
            }
		}
	}
	else
	{
		global ManualDepressIsEnabled := false
	}
}

disableManualDepress()
{
	if(ManualDepressIsEnabled)
	{
		global ManualDepressIsEnabled := false
	}
}

~PgUp::toggleKey(key)
~LButton::disableManualDepress()

; F9 key will toggle suspend
#SuspendExempt
F9::Suspend -1