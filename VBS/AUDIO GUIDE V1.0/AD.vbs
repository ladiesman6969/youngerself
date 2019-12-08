'AUDIO GUIDE V1.0
'COPYRIGHT @ 2016 Debayan Sutradhar
'Setting up and creating objects
On Error Resume Next
Set fso=Wscript.CreateObject("Scripting.FileSystemObject")
Set shell=WScript.CreateObject("Wscript.Shell")
Set girl=WScript.CreateObject("SAPI.spvoice")
'Setting up the program (MAIN POINT)
'Introduction PART : 1
intro=MsgBox("Welcome to Audio Guide!"&vbNewLine&"Copyright @2016 Debayan Sutradhar"&vbnewline&"Would you like to proceed ?",vbYesNo+vbInformation,"Audio Guide v1.0")
If intro=vbYes Then
choice1=1
ElseIf intro=vbNo Then
choice1=2
ElseIf IsEmpty(intro) Then
choice1=2
End If
'Declaring ECSAPE or CONTINUE PART : 1
If choice1=2 Then WScript.Quit
do
if r2<>0 then
texttbd2="Please enter the rate in nos."&vbnewline&"Enter 1 for Slow"&vbnewline&"Enter 2 for normal"&vbnewline&"Enter 3 for Fast"
elseif r2=0 then
texttbd2="Before running the guide, please select the rate of the voice"&vbnewline&"Enter 1 for Slow"&vbnewline&"Enter 2 for normal"&vbnewline&"Enter 3 for Fast"
End If
setup=inputBox(texttbd2,"Audio Guide v1.0","Enter 1, 2 or 3")
If setup=vbcancel Then
choice11=2
ElseIf IsEmpty(intro) Then
choice11=2
End If
r2=r2+1
loop until IsEmpty(setup) or setup=vbcancel or setup="1" or setup="2" or setup="3"
'Declaring ESCAPE or CONTINUE PART : 1
If choice11=2 Then WScript.Quit
If setup = "1" Then
'SLOW RATE
r1=-5
ElseIf setup="2" Then
r1=0
ElseIf setup="3" Then
r1=3
Else
Wscript.Quit
End If
girl.Rate=r1
'MAKE CHANGES HERE... PART : 1
Dim filenamearray(25)'HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEERRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
filenamearray(1)="1.txt"
filenamearray(2)="2.txt"
filenamearray(3)="3.txt"
filenamearray(4)="4.txt"
filenamearray(5)="5.txt"
filenamearray(6)="6.txt"
filenamearray(7)="7.txt"
filenamearray(8)="8.txt"
filenamearray(9)="9.txt"
filenamearray(10)="10.txt"
filenamearray(11)="11.txt"
filenamearray(12)="12.txt"
filenamearray(13)="13.txt"
filenamearray(14)="14.txt"
filenamearray(15)="15.txt"
filenamearray(16)="16.txt"
filenamearray(17)="17.txt"
filenamearray(18)="18.txt"
filenamearray(19)="19.txt"
filenamearray(20)="20.txt"
filenamearray(21)="21.txt"
filenamearray(22)="22.txt"
filenamearray(23)="23.txt"
filenamearray(24)="24.txt"
filenamearray(25)="25.txt"

'Starting PART : 2
Do
If choice3=1 Then
texttbd1="Please enter the info number"
texttbdd1="If you want to hear the same audio again then enter "&inputd1
Else
texttbd1="Please enter the info number"
texttbdd1="For example : 1"
End If
Do
If vbn<>0 Then 
texttbd1="Please enter the info no. in numbers and not in words..."
End If
input1=InputBox(texttbd1,"Audio Guide v1.0",texttbdd)
vbn=vbn+1
If IsEmpty(input1) Or input1=vbCancel Then
WScript.Quit
End If
Loop Until IsNumeric(input1)
vbn=0
For i= 1 To 25 'HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEERRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
If CInt(input1)=i Then
inputd1=input1
choice2=1
choice3=1
Set f = fso.OpenTextFile(filenamearray(i), 1, True)

datas=f.readline
f.close
girl.Speak datas
datas=Null
nm="22"
End if
Next
If choice2<>1 Then shell.Popup "Bad number",55,"Audio Guide v1.0"
choice2=0
Loop