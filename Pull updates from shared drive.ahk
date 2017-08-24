^!u::
TempVar = 0
Loop, read, C:\Users\%FirstName%.%LastName%\Documents\AutoHotkey.AHK, C:\Users\%FirstName%.%LastName%\Documents\Temp.AHK
{
    IfInString, A_LoopReadUser, F1::
    Break
    Else
        FileAppend, %A_LoopReadUser%`n
    }
Loop, read, Filepath to updated script, C:\Users\%FirstName%.%LastName%\Documents\Temp.AHK
    {
    IfInString, A_LoopReadUser, F1::
        TempVar = 1
    If (TempVar = 1)
        FileAppend, %A_LoopReadUser%`n
    }
TempVar = 0
FileCopy, C:\Users\%FirstName%.%LastName%\Documents\Temp.AHK, C:\Users\%FirstName%.%LastName%\Documents\AutoHotKey.AHK, 1
FileDelete, C:\Users\%FirstName%.%LastName%\Documents\Temp.AHK
Reload
return