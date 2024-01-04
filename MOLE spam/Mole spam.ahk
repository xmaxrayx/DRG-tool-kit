#Requires AutoHotkey v2.0
#SingleInstance Force
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 11:34:37  on 1/1/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}#SingleInstance Force




drgApp := "ahk_exe FSD-Win64-Shipping.exe"
global time := 500
#HotIf WinActive(drgApp)
global toggle:=0



^P::MainSittingsGUI()

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




;===========gui================


MainSittingsGUI(){
    local mgui := Gui()   
    
    mgui.Add("Text", ,"Time betwwen eatch key in ms")
    timeEdit := mgui.Add("Edit", "w180 Number"  )
    mgui.Add("Button", "x80 w40" , "Apply" ).OnEvent("Click" ,(*)=> applytime())

    currentKey := mgui.Add("Text","xm" , "Current key:")
    mgui.Add("Button", "xm+60" , "Select a key").OnEvent("Click" ,(*)=> selectKeyfunc())
    
   mgui.Add("Button", , "Exit").OnEvent("Click" ,(*)=> mgui.Destroy())
    ;====================gui event



    ;===================gui funiction
    applytime(){
        global time
        if timeEdit.Value < 500{
           
            msgboxResult := MsgBox("Recommend time must be 500 or more`n`ndo you want Setted to 500?",,"yn")
            if msgboxResult == "Yes"{
                time := timeEdit.Value := 500
            }else {
                time := timeEdit.Value
            
            }

            


        }else{
           
            timeEdit.Value := time
        }
    }
    selectKeyfunc(){
        MsgBox
    ;     local title := "Select a key"
    ;     mgui := Gui()


    ;     mgui.Add("text" ,,"Press the key or Press ESC")
    ;     #HotIf WinActive(title)

    ;     a:: MsgBox(ThisHotkey), key := ThisHotkey
    }










   

    mgui.Show()
}


    










;===========functions================

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