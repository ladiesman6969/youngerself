Set fso=CreateObject("Scripting.FileSystemObject")
Do
x=x+1
x2=Cstr(x)
x3="q"&x2&".qz"
Set m=fso.createtextfile(x3)
m.Close
Loop until x=1000
Do
y=y+1
y2=Cstr(y)
y3="a"&y2&".qz"
set m=fso.createtextfile(y3)
m.close
loop until y=1000