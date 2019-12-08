'Quizzer v1.0
'Copyright 2015@ Debayan Sutradhar
'All rights Reserved

'Creating Objects and Special Arguments
On Error Resume Next
Randomize 
Set shell=WScript.CreateObject("Wscript.Shell")
Set fso=WScript.CreateObject("Scripting.FileSystemObject")
Set emailObj=WScript.CreateObject("CDO.Message")
Set emailConfig = emailObj.Configuration

'Introduction
m1=MsgBox("Welcome to Quizzer!!! Continue?",vbYesNo+vbInformation,"Quizzer v1.0")
If m1=vbNo Then
MsgBox "Thanks for using this program...",0+vbInformation,"Quizzer v1.0"
WScript.Quit
End If
'Getting the text files
If Not fso.FileExists("user.qz") Then
'Getting the user information when the user uses for the first time
m2=MsgBox("You have to register our software to use it further..."&vbNewLine&"Start the Survey?(YOU HAVE TO BE ONLINE!)",vbYesNo+vbInformation,"Quizzer v1.0")
If m2=vbNo Then
MsgBox "Sorry!!! You have to first register our software... To register, please restart the program...",0+vbInformation,"Quizzer v1.0"
WScript.Quit
End If
'SURVEY
sq1=InputBox("Please enter your first Name","Quizzer v1.0")
If IsEmpty(sq1) Or sq1=vbCancel Then WScript.Quit
sq2=InputBox("Please enter your Second Name","Quizzer v1.0")
If IsEmpty(sq2) Or sq2=vbCancel Then WScript.Quit
sq3=MsgBox("This software only asks you about the current affairs around the world..."&vbNewLine&"Do you agree. If not, this program will terminate...",vbYesNo+vbInformation,"Quizzer v1.0")
If sq3=vbNo Then WScript.Quit
username1=sq1&" "&sq2
username2=sq2
'Sending info to server........
emailObj.From     = "school.iluminati@gmail.com"
emailObj.To       = "debayansutradhar3@gmail.com"
emailObj.Subject  = "QUIZZER USER INFO"
emailObj.TextBody = "User's name :"&username1
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gmail.com"
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpserverport") =465
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendusing")    = 2  
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1  
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/smtpusessl")      = true 
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendusername")    = "school.iluminati"
emailConfig.Fields("http://schemas.microsoft.com/cdo/configuration/sendpassword")    = "rup@06052004"
emailConfig.Fields.Update
emailObj.Send
If Err.Number<>0 Then
MsgBox "Sorry!!! You must be online to register or there must be some critical error. Please try again!!!"&vbNewLine&"Click 'ok' to terminate this software...",0+vbCritical,"Quizzer v1.0"
WScript.Quit
End If
'SURVEY completed
fso.CreateTextFile("user.qz")
m3=MsgBox("Congratulations!!! Quizzer is now ready to use!!!",0+vbInformation,"Quizzer v1.0")
If IsEmpty(m3) Then WScript.Quit
End If
'MAIN PART
st1=Msgbox("Rules:-"&vbNewLine&"1.If you enter a correct answer then you earn 5 points."&vbNewLine&"2.If you enter a incorrect answer then you don't get any points."&vbNewLine&"Start Quiz???",vbyesno+vbinformation,"Quizzer v1.0")
If st1=vbNo then 
MsgBox "Thanks for using this program...",0+vbInformation,"Quizzer v1.0"
WScript.Quit
End If 
a=0
If Not fso.FileExists("q1.qz") Then
MsgBox "Sorry!!! No quiz files assigned",0+16,"Quizzer v1.0"
WScript.Quit
ElseIf Not fso.FileExists("a1.qz") Then
MsgBox "Sorry!!! No quiz files assigned",0+16,"Quizzer v1.0"
WScript.Quit
ElseIf Not fso.FileExists("q1.qz") And Not fso.FileExists("a1.qz") Then
MsgBox "Sorry!!! No quiz files assigned",0+16,"Quizzer v1.0"
WScript.Quit 
End If
Do 
qno=Int(3*Rnd)+1
filename1="q"&qno&".qz"
filename2="a"&qno&".qz"
Set question=fso.OpenTextFile(filename1,1)
question1=question.ReadLine
question.Close
Set answer=fso.OpenTextFile(filename2,1)
answer1=answer.ReadLine
answer.Close
choicer=InputBox(question1&vbNewLine&"Please enter the answer in one word...","Quizzer v1.0")
If IsEmpty(choicer) Or choicer=vbCancel Then
MsgBox "Thanks for using this program..."&vbNewLine&"You earned :"&add&" points."&vbNewLine&"Please visit again :)",0+vbInformation,"Quizzer v1.0"
WScript.Quit
ElseIf UCase(choicer)=answer1 Then
add=add+5
mom2=MsgBox("Congratulations! You earned 5 points.",0+vbInformation,"Quizzer v1.0")
If IsEmpty(mom2) Then
MsgBox "Thanks for using this program..."&vbNewLine&"Please visit again :)",0+vbInformation,"Quizzer v1.0"
WScript.Quit
End If
ElseIf UCase(choicer)<>answer1 Then 
mom2=MsgBox("Sorry! The correct answer was: "&answer1&""&vbNewLine&"You Entered: "&choicer&""&vbNewLine&"You gained zero points...",0+vbInformation,"Quizzer v1.0")
End If 
Loop
'Main Loop Stable!!!

