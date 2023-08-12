@echo off

rem The Creator is a furry :)

title Minecraft Server Installer by anothermeer

rem remind
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo Please be informed that this Installer will use powershell to download the server file. 
pause

rem java check
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo In order to run minecraft server, you will need java.
echo Please check if you have installed java.
pause

rem install path select
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo Please enter the location that you want the server install in. 
echo ENTER FULL PATH.
:PATHAGAIN
set /p installPATH="> "
echo.
echo Are you sure this is the righ path? (Y/n) : %installPATH%
set /p PATHconfirm="> "
if %PATHconfirm%==Y goto PATHPROCEED else goto PATHAGAINMSG
:PATHPROCEED
cd /d %installPATH%
goto PATHOK
:PATHAGAINMSG
echo enter your path again.
echo.
goto PATHAGAIN

:PATHOK
rem MAIN CONTENT
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo Which version you want to install?
echo 1. Vanilla
echo 2. Spigot/CraftBukkit
echo 3. MCPE(Bedrock)
echo.
echo PLEASE ENTER NUMBER ONLY
:SRVTYPEINVALID
set /p MCSRVTYPE="> "
if %MCSRVTYPE%==1 goto TYPE1
if %MCSRVTYPE%==2 goto TYPE2
if %MCSRVTYPE%==3 goto TYPE3

echo.
echo Invalid option. Type Again.
goto SRVTYPEINVALID

:TYPE1
set installver=vanilla
cd /d %installPATH%
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo Which version of Vanilla server you want to install?
echo write version of minecraft only (1.17 - 1.19)
set /p VANILLAVER="> "
if %VANILLAVER%==1.19.4 goto 194
if %VANILLAVER%==1.19.3 goto 193
if %VANILLAVER%==1.19.2 goto 192
if %VANILLAVER%==1.19.1 goto 191
if %VANILLAVER%==1.19.0 goto 190
if %VANILLAVER%==1.18.2 goto 182
if %VANILLAVER%==1.18.1 goto 181
if %VANILLAVER%==1.18.0 goto 180
if %VANILLAVER%==1.17.1 goto 171
if %VANILLAVER%==1.17.0 goto 170
echo Invalid Option. Exiting.
pause
goto eof

:194
set mcver=194
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo download file...
echo.
echo.
powershell -c "Invoke-WebRequest -Uri 'https://piston-data.mojang.com/v1/objects/8f3112a1049751cc472ec13e397eade5336ca7ae/server.jar' -OutFile '%installPATH%\server.jar'"
echo success
echo.
pause
goto jarinstalled

:193
set mcver=193
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo download file...
echo.
echo.
powershell -c "Invoke-WebRequest -Uri 'https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar' -OutFile '%installPATH%\server.jar'"
echo success
echo.
pause
goto jarinstalled

:192
set mcver=192
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo download file...
echo.
echo.
powershell -c "Invoke-WebRequest -Uri 'https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar' -OutFile '%installPATH%\server.jar'"
echo success
echo.
pause
goto jarinstalled

:191
set mcver=191
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo download file...
echo.
echo.
powershell -c "Invoke-WebRequest -Uri 'https://piston-data.mojang.com/v1/objects/8399e1211e95faa421c1507b322dbeae86d604df/server.jar' -OutFile '%installPATH%\server.jar'"
echo success
echo.
pause
goto jarinstalled

:190
set mcver=190
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo download file...
echo.
echo.
powershell -c "Invoke-WebRequest -Uri 'https://piston-data.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar' -OutFile '%installPATH%\server.jar'"
echo success
echo.
pause
goto jarinstalled

:182
set mcver=182
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo download file...
echo.
echo.
powershell -c "Invoke-WebRequest -Uri 'https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar' -OutFile '%installPATH%\server.jar'"
echo success
echo.
pause
goto jarinstalled

:181
set mcver=181
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo download file...
echo.
echo.
powershell -c "Invoke-WebRequest -Uri 'https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar' -OutFile '%installPATH%\server.jar'"
echo success
echo.
pause
goto jarinstalled

:180
set mcver=180
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo download file...
echo.
echo.
powershell -c "Invoke-WebRequest -Uri 'https://launcher.mojang.com/v1/objects/3cf24a8694aca6267883b17d934efacc5e44440d/server.jar' -OutFile '%installPATH%\server.jar'"
echo success
echo.
pause
goto jarinstalled

:171
set mcver=171
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo download file...
echo.
echo.
powershell -c "Invoke-WebRequest -Uri 'https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar' -OutFile '%installPATH%\server.jar'"
echo success
echo.
pause
goto jarinstalled

:170
set mcver=170
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo download file...
echo.
echo.
powershell -c "Invoke-WebRequest -Uri 'https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar' -OutFile '%installPATH%\server.jar'"
echo success
echo.
pause
goto jarinstalled

:jarinstalled
:eulano
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo For the next step, you need to agree to minecraft's eula
echo (https://account.mojang.com/documents/minecraft_eula)
echo Yes/no answer option
echo.
set /p agreeeula="> "
if %agreeeula%==Y goto eulayes else goto eulano
if %agreeeula%==Yes goto eulayes else goto eulano
if %agreeeula%==Ye goto eulayes else goto eulano
if %agreeeula%==yE goto eulayes else goto eulano
if %agreeeula%==yES goto eulayes else goto eulano
if %agreeeula%==y goto eulayes else goto eulano

:eulayes
echo eula=true > eula.txt
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo Do you want to create a start script?
echo Y or n only
set /p startscript="> "
if %startscript%==Y goto yessscript else goto nosscript

:yessscript
echo java -jar server.jar > start.bat
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo Do you want to start the server now?
echo Y or n only
set /p startnowyss="> "
if %startnowyss%==Y goto startserver else goto END

:nosscript
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo Do you want to start the server now?
echo Y or n only
set /p startnownss="> "
if %startnownss%==Y goto startserver else goto END

:startserver
java -jar server.jar
goto END

:TYPE2
echo not supported in this version!
pause
goto eof

:TYPE3
echo not supported in this version!
pause
goto eof


:END
cls
echo Minecraft Server Installer
echo Warning:This is not the official Installer. Don't sue me pls.
echo Written by : Anothermeer
echo.
echo Install is complete. Thank you for using this tool.
echo.
echo LOG DUMP
echo start tool..
echo powershell remind
echo java check
echo path select
echo path setted : %installPATH%
echo selected install version : %installerver%
echo selected minecraft version : %mcver%
echo download jar file...
echo agree eula
echo copy eula file
if %startscript%==Y echo copy start mcsrv script  else echo no start script
if %startnowyss%==Y echo start server
if %startnownss%==Y echo start server
echo tool end-dump end
echo.

pause


