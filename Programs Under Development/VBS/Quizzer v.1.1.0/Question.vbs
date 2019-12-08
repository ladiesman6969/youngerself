'Quizzer v1.f
'FILE name : Question.vbs
'Copyright @ 2016 Debayan Sutradhar

'Creating Objects and Special Arguments
Set fso=WScript.CreateObject("Scripting.FileSystemObject")

'Main part
If Not fso.FileExists("user.qz") Then
MsgBox "Sorry! Quizzer must be registered before using this program...",vbOK+vbCritical,"Quizzer v1.0"
WScript.Quit
End If
'START
If Not fso.FileExists("qn.qz") Then
MsgBox "Sorry! Some critical problem has occured..."&vbNewLine&"1.There must be some problems with the Quiz files...."&vbNewLine&"PLEASE REINSTALL THE SOFTWARE!!!!",vbOK+vbCritical,"Quizzer v1.0"
WScript.Quit
End If
'START 2
x=WScript.ScriptFullName
x2=WScript.ScriptName 
Set regEx = New RegExp
regEx.IgnoreCase = True  
name=regEx.Replace(x, WScript.Name,"")
MsgBox name,0+0,"Ssd" 
