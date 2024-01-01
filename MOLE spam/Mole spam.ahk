#Requires AutoHotkey v2.0
#SingleInstance Force
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:34:37  on 1/1/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}#SingleInstance Force

drgApp := "ahk_exe FSD-Win64-Shipping.exe"

#HotIf WinActive(drgApp)
global toggle:=0



p::{
    if toggle == 0 {
        global toggle += 1
        SoundBeep(3500,140)

        
    }
    else{
        toggle := 0
        SoundBeep(1400,140)

    }
}
















spamMolyFunc(){
    if WinActive(drgApp) {
        
        loop {
            if toggle == 0 {
                
            }
            else if toggle == 1 {
                SendInput("c")
                Sleep(500)
            }
        }
    }
        
}


while  WinWaitActive(drgApp){

spamMolyFunc()


    try {
        if WinGetID("A") != WinGetID(drgApp){
            global toggle := 0
            break
        }  
    } 
WinWaitNotActive(drgApp)
}