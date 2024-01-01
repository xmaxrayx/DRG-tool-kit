#Requires AutoHotkey v2.0
#SingleInstance Force
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:34:37  on 1/1/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}#SingleInstance Force

drgApp := "ahk_exe FSD-Win64-Shipping.exe"
global time := 500
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


















while  WinWaitActive(drgApp){
    
    spamMolyFunc()

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

            try {
                if WinGetID("A") != WinGetID(drgApp){
                    global toggle := 0
                    break
                }  
            }
           
        ; WinWaitNotActive(drgApp)
        ; global toggle := 0


        }
    }
    WinWaitNotActive(drgApp)
    global toggle := 0
        
}
