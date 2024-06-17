    ; This is the third autoclicker ever made; all royalties to mikeyww, please
    autoKey := Object()
    autoKey.toggle := False
    autoKey.key := "Click"

    switchToggle(*) {
        MsgBox("Before Toggle: " autoKey.toggle)
        autoKey.toggle := !autoKey.toggle
        MsgBox("After Toggle: " autoKey.toggle)
    }

    RShift:: {
        if autoKey.toggle {
            Send "{" autoKey.key " Down}"
            switchToggle()
        }
        else if !autoKey.toggle {
            Send "{" autoKey.key " Up}"
            switchToggle()
        }
    }