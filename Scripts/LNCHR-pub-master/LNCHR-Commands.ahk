lngui_run_commands(input){

if input == "mfo" ;MFO Email
    {
        close_lngui()
        tryrun("https://outlook.office.com/mail/")
        return
    }

if input == "mil" ;mil Email
    {
        close_lngui()
        tryrun("https://webmail.apps.mil")
        return
    }

if input == "vs" ; VsCode
{
    close_lngui()
    Run("C:\Program Files\Microsoft VS Code\Code.exe")
    return
}

if ((input == "cal") and (UsingAnyWorkcomputer)) ; cal 
{
close_lngui()
tryrun('"C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" /recycle /select outlook:calendar')
return
}

if input == "?" ; ? 
{
tryrun("HELP-Commands.txt")
Sleep(100)
close_lngui()
build_lngui()
return
}

if input == "a dir" ; a dir 
{
close_lngui()
tryrun('%A_ScriptDir%\..\')
return
}

if input == "a edit" ; a edit 
{
close_lngui()
tryrun('pycharm64 %A_ScriptDir%\..\.')
return
}

if input == "a kill" ; a kill 
{
close_lngui()
tryrun('KillAHK.ahk')
return
}

if input == "a rel" ; a rel 
{
close_lngui()
Reload
return
}

if input == "a sta" ; a sta 
{
close_lngui()
tryrun('%A_ScriptDir%\..\..\AHKstartup.ahk')
return
}

if input == "a xl" ; a xl 
{
close_lngui()
tryrun('LNCHR-CommandsGenerator.xlsm')
return
}

if input == "awa" ; awa 
{
close_lngui()
tryrun('StayAwake.ahk')
return
}

if input == "not" ; not 
{
close_lngui()
tryrun('Notepad')
return
}

if input == "pai" ; pai 
{
close_lngui()
tryrun('C:\Windows\system32\Krita.exe')
return
}

if input == "pho" ; pho 
{
close_lngui()
tryrun('shell:AppsFolder\Microsoft.YourPhone_8wekyb3d8bbwe!App')
return
}

if input == "tea" ; tea 
{
close_lngui()
tryrun('"C:\Users\' A_UserName '\AppData\Local\Microsoft\Teams\current\Teams.exe"')
return
}

if input == "zoo" ; zoo 
{
close_lngui()
tryrun('ZooMagnifier.ahk')
return
}

if input == " h" ;  h 
{
close_lngui()
DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)
return
}

if input == " l" ;  l 
{
close_lngui()
Shutdown(0)
return
}

if input == " p" ;  p 
{
close_lngui()
Shutdown(2)
return
}

if input == " r" ;  r 
{
close_lngui()
Shutdown(1)
return
}

if input == " s" ;  s 
{
close_lngui()
DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
return
}

if input == "caps" ; caps 
{
close_lngui()
toggleCapsLock()
return
}

if input == "doc" ; doc 
{
close_lngui()
tryrun('"C:\Users\' A_Username '\Documents"')
return
}

if input == "down" ; down 
{
close_lngui()
tryrun('"C:\Users\' A_Username '\Downloads"')
return
}

if input == "desk" ; desk 
{
close_lngui()
tryrun('"C:\Users\' A_Username '\OneDrive\Desktop"')
return
}

if input == "pro" ; pro 
{
close_lngui()
tryrun('"C:\Users\' A_Username '\Projects"')
return
}

if input == "rec" ; rec 
{
close_lngui()
tryrun('::{645FF040-5081-101B-9F08-00AA002F954E}')
return
}

if input == "pc" ; pc 
{
close_lngui()
tryrun('explorer =')
return 
}

if input == "too" ; too 
{
close_lngui()
tryrun('%A_ScriptDir%\..\..\')
return
}

if input == "cdr" ; cdr 
{
close_lngui()
tryrun('C:\')
return
}

if input == "/" ; / 
{
lngui_enable_query("r/", make_run_ReplaceTexts_func("https://www.reddit.com/r/REPLACEME"))
return
}

if input == "c " ; c  
{
lngui_enable_calc()
return
}

if input == "e " ; e  
{
lngui_enable_query("Everything", make_run_ReplaceTexts_func("C:\Program Files\Everything\Everything.exe -search REPLACEME"))
return
}

if input == "g " ; g  
{
lngui_enable_query("Google", make_run_ReplaceTexts_func("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=REPLACEME&btnG=Search&oq=&gs_l="))
return
}

if input == "i " ; i  
{
lngui_enable_query("Google Private", make_run_ReplaceTexts_func("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe -incognito https://www.google.com/search?safe=off&q=REPLACEME"))
return
}

if input == "r " ; r  
{
lngui_enable_query("Run", make_run_ReplaceTexts_func("REPLACEME"))
return
}

if input == "rk " ; rk  
{
lngui_enable_query("Run (keep open)", make_run_ReplaceTexts_func("cmd /k 'REPLACEME'"))
return
}

if input == "s " ; s  
{
lngui_enable_query("Spotify", make_run_ReplaceTexts_func("https://open.spotify.com/search/REPLACEME"))
return
}

if input == "t " ; t  
{
lngui_enable_query("Torrents", make_run_ReplaceTexts_func("https://www.google.com/search?&q=REPLACEME","https://www.google.com/search?&q=REPLACEME"))
return
}

if input == "td " ; td  
{
lngui_enable_query("TeX Doc", make_run_ReplaceTexts_func("https://texdoc.org/serve/REPLACEME/0"))
return
}

if input == "ct " ; ct  
{
lngui_enable_query("CTAN", make_run_ReplaceTexts_func("https://ctan.org/pkg/REPLACEME"))
return
}

if input == "w " ; w  
{
lngui_enable_query("Wolfram Alpha", make_run_ReplaceTexts_func("https://www.wolframalpha.com/input/?i=REPLACEME"))
return
}

if input == "y " ; y  
{
lngui_enable_query("YouTube", make_run_ReplaceTexts_func("https://www.youtube.com/results?search_query=REPLACEME"))
return
}

if input == "cal" ; cal 
{
close_lngui()
tryrun('https://www.google.com/calendar')
return
}

if input == "ama" ; ama 
{
close_lngui()
tryrun('https://www.amazon.ca/')
return
}

if input == "dri" ; dri 
{
close_lngui()
tryrun('www.drive.google.com/')
return
}

if input == "git" ; git 
{
close_lngui()
tryrun('https://github.com/')
return
}

if input == "gma" ; gma 
{
close_lngui()
tryrun('https://mail.google.com/')
return
}

if input == "kee" ; kee 
{
close_lngui()
tryrun('https://keep.google.com/')
return
}

if input == "map" ; map 
{
close_lngui()
tryrun('https://www.google.com/maps/')
return
}

if input == "red" ; red 
{
close_lngui()
tryrun('www.reddit.com')
return
}

if input == "wha" ; wha 
{
close_lngui()
tryrun('https://web.whatsapp.com')
return
}

if input == "cli" ; cli 
{
close_lngui()
SendInput '^``'
return
}

if input == "cmd" ; cmd 
{
close_lngui()
tryrun('^``')
return
}

if input == "col" ; col 
{
close_lngui()
SendInput '#+c'
return
}

if input == "cont" ; cont 
{
close_lngui()
tryrun('control')
return
}

if input == "draw" ; draw 
{
close_lngui()
tryrun('"C:\Program Files\draw.io\draw.io.exe"')
return
}

if input == "emo" ; emo 
{
close_lngui()
SendInput '#.'
return
}

if input == "env" ; env 
{
close_lngui()
tryrun('""C:\Windows\system32\rundll32.exe" sysdm.cpl`,EditEnvironmentVariables "')
return
}

if input == "ext" ; ext 
{
close_lngui()
SendInput '#+e'
return
}

if input == "mag" ; mag 
{
close_lngui()
tryrun("C:\Users\" A_Username "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessibility\Magnify.lnk")
return
}

if input == "mou" ; mou 
{
close_lngui()
SendLevel(0)
Send "^!#m"
SendLevel(1)
return
}

if input == "mut" ; mut 
{
close_lngui()
SendInput '#+n'
return
}

if input == "resx" ; resx 
{
close_lngui()
run 'taskkill /f /im explorer.exe'
run 'explorer.exe'
return
}

if input == "rul" ; rul 
{
close_lngui()
SendInput '#+m'
return
}

if input == "sni" ; sni 
{
close_lngui()
SendInput '#+s'
return
}

if input == "tm" ; tm 
{
close_lngui()
tryrun('taskmgr')
return
}

if input == "top" ; top 
{
close_lngui()
SendInput '#^t'
return
}

if input == "zon" ; zon 
{
close_lngui()
SendInput '#+``'
return
}

if input == "fn" ; fn 
{
close_lngui()
SendInput "{SC163 Down}"
SendInput "{Esc}"
SendInput "{SC163 Up}"
return
}

if input == "ff" ; ff 
{
close_lngui()

return
}

if input == "mem" ; mem 
{
close_lngui()
tryrun('"LNCHR-Memory.ini"')
return
}

if input == "gui" ; gui
{
close_lngui()
Run("C:\Users\nolan\OneDrive\Desktop\Scripts\Launch Gui.ahk")
return
}

}