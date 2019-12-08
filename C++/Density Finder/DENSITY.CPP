#include<iostream.h>
#include<conio.h>
void main()
{
//WAP to make a program to find density and Relative Density
clrscr();
int choice,unit,wd,m33,kep;
float m,v,d,rd;
//Initialzation finished

//To Show menu
cout<<"           --Density Finder--"<<endl;
cout<<"CopyRight 2016 @ DX_GROUP"<<endl;
cout<<"Press Any Key To Continue";
getch();
clrscr();
do
{
clrscr();
cout<<"              --Menu--"<<endl;
cout<<"1.Find Density!!!"<<endl;
cout<<"2.Credits"<<endl;
cout<<"3.Exit"<<endl;
cout<<"Please Choose Any One Of the Following AS GIVEN THREE NOS. : " ;
cin>>choice;
}
while(choice!=1&&choice!=2&&choice!=3);
//Menu Ended

//The IF part. The MAIN PARTS are also shown here
clrscr();
if (choice==1)
{
//Showing the options to choose the desired unit...
do
{
clrscr();
cout<<"                    --SELECT UNIT--"<<endl;
cout<<"NOTE: FINDING THE RELATIVE DENSITY IS DEFAULT"<<endl;
cout<<"1.(Systeme De Internationale) SI unit (kg/m) or (kgm-3)."<<endl;
cout<<"2.(Centimeter Gram Second) CGS unit (g/cm) or (gcm-3)."<<endl;
cout<<"Please Choose Any One Of the Following AS GIVEN TWO NOS. : ";
cin>>unit;
}
while(unit!=1&&unit!=2);
//Unit Options Finished

//DENSITY FINDING PART STARTED
clrscr();
do
{
clrscr();
cout<<"            --PLEASE FILL UP THE REQUIRMENTS--"<<endl;
cout<<"                      --TO CONTINUE--"<<endl;
if (unit==1)
{
cout<<"Enter the Mass of the object in kgs. (MASS SHOULD BE GREATER THAN -1) : ";
}
else if(unit==2)
{
cout<<"Enter the Mass of the object in gs. (MASS SHOULD BE GREATER THAN -1) :";
}
cin>>m;
if(unit==1){
cout<<"Enter the Volume of the object in m3 (VOLUME SHOULD BE GRATER THAN -1) : ";
}
else if (unit==2){
cout<<"Enter the Volume of the object in cm3. (MASS SHOULD BE GREATER THAN -1) : ";
}
cin>>v;
m33=m+v;
}
while (m<0||v<0||m33<0);
//inputting Finished...

//process started
if (unit==1)
{
wd=1;
}
else if (unit==2)
{
wd=1000;
}
d=m/v;
rd=v/wd;
//Process finished...

//Output Started
clrscr();
cout<<"              --RESULTS--"<<endl;
if(unit==1){
cout<<"The Mass of the object is : "<<m<<"  kg."<<endl;
cout<<"The Volume of the object is : "<<v<<" m3."<<endl;
cout<<"The Density of the object is : "<<d<<" kg/m3"<<endl;
cout<<"The Relative Density of the Object is : "<<rd<<":"<<d<<endl;
}
else{
cout<<"The Mass of the object is : "<<m<<"  g."<<endl;
cout<<"The Volume of the object is : "<<v<<" cm3."<<endl;
cout<<"The Density of the object is : "<<d<<" g/m3"<<endl;
cout<<"The Relative Density of the Object is : "<<rd<<":"<<d<<endl;
}
endl;endl;
cout<<"               .:!--!:."<<endl;
cout<<"THANKS FOR USING THIS PROGRAM."<<endl;
cout<<"Made by Debayan Sutradhar @ 2016"<<endl;
cout<<"Press Any Key To Terminate The Program";
getch();
}
else if (choice==2)
{
cout<<"                        --CREDITS--"<<endl;
cout<<"Lead Programmer, Designer & Producer : Master Debayan Sutradhar."<<endl;
cout<<"To Find the density of an object, Terminater the Program and Execute Again.";
getch();
}
}
