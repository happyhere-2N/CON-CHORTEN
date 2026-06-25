::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBRBXxeDMWqGIrAP4/z0/9aOoUITWqw2e4C7
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBRBXxeDMWqGIrAP4/z0/9akjWNQd8oQSrv+9PqLOOVz
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:MENU
cls
color 0F
echo =======================================================================
:: Display the title in Blue using PowerShell
powershell -Command "write-host '                      ' -NoNewline; write-host 'CON-CHORTEN v0.1' -ForegroundColor Blue"
echo =======================================================================

:: Define registry keys and display names
set "K=HKCR\DesktopBackground\Shell"

:: Row 1: This PC vs Microsoft Store
reg query "%K%\01_ThisPC" >nul 2>&1 && set "S1=ADDED  " || set "S1=REMOVED"
reg query "%K%\07_Store" >nul 2>&1 && set "S7=ADDED  " || set "S7=REMOVED"

:: Row 2: Settings vs Downloads
reg query "%K%\02_Settings" >nul 2>&1 && set "S2=ADDED  " || set "S2=REMOVED"
reg query "%K%\08_Downloads" >nul 2>&1 && set "S8=ADDED  " || set "S8=REMOVED"

:: Row 3: Control Panel vs Lock PC
reg query "%K%\03_ControlPanel" >nul 2>&1 && set "S3=ADDED  " || set "S3=REMOVED"
reg query "%K%\09_Lock" >nul 2>&1 && set "S9=ADDED  " || set "S9=REMOVED"

:: Row 4: Google Chrome vs Sleep
reg query "%K%\04_Chrome" >nul 2>&1 && set "S4=ADDED  " || set "S4=REMOVED"
reg query "%K%\10_Sleep" >nul 2>&1 && set "S10=ADDED  " || set "S10=REMOVED"

:: Row 5: Recycle Bin vs Restart
reg query "%K%\05_RecycleBin" >nul 2>&1 && set "S5=ADDED  " || set "S5=REMOVED"
reg query "%K%\11_Restart" >nul 2>&1 && set "S11=ADDED  " || set "S11=REMOVED"

:: Row 6: Command Prompt vs Shutdown
reg query "%K%\06_CMD" >nul 2>&1 && set "S6=ADDED  " || set "S6=REMOVED"
reg query "%K%\12_Shutdown" >nul 2>&1 && set "S12=ADDED  " || set "S12=REMOVED"

:: Use powershell to draw the menu lines safely with dual color columns
powershell -Command "write-host ' 1. This PC          [' -NoNewline; if('%S1%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green -NoNewline}else{write-host 'REMOVED' -ForegroundColor Red -NoNewline}; write-host ']      7. Microsoft Store [' -NoNewline; if('%S7%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green}else{write-host 'REMOVED' -ForegroundColor Red}"
powershell -Command "write-host ' 2. Settings         [' -NoNewline; if('%S2%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green -NoNewline}else{write-host 'REMOVED' -ForegroundColor Red -NoNewline}; write-host ']      8. Downloads       [' -NoNewline; if('%S8%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green}else{write-host 'REMOVED' -ForegroundColor Red}"
powershell -Command "write-host ' 3. Control Panel    [' -NoNewline; if('%S3%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green -NoNewline}else{write-host 'REMOVED' -ForegroundColor Red -NoNewline}; write-host ']      9. Lock PC         [' -NoNewline; if('%S9%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green}else{write-host 'REMOVED' -ForegroundColor Red}"
powershell -Command "write-host ' 4. Google Chrome   [' -NoNewline; if('%S4%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green -NoNewline}else{write-host 'REMOVED' -ForegroundColor Red -NoNewline}; write-host ']     10. Sleep           [' -NoNewline; if('%S10%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green}else{write-host 'REMOVED' -ForegroundColor Red}"
powershell -Command "write-host ' 5. Recycle Bin     [' -NoNewline; if('%S5%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green -NoNewline}else{write-host 'REMOVED' -ForegroundColor Red -NoNewline}; write-host ']     11. Restart         [' -NoNewline; if('%S11%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green}else{write-host 'REMOVED' -ForegroundColor Red}"
powershell -Command "write-host ' 6. Command Prompt  [' -NoNewline; if('%S6%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green -NoNewline}else{write-host 'REMOVED' -ForegroundColor Red -NoNewline}; write-host ']     12. Shutdown        [' -NoNewline; if('%S12%'.Trim() -eq 'ADDED'){write-host 'ADDED' -ForegroundColor Green}else{write-host 'REMOVED' -ForegroundColor Red}"

echo -----------------------------------------------------------------------
powershell -Command "write-host '  13. [ ' -NoNewline; write-host 'ADD ALL ITEMS' -ForegroundColor Green -NoNewline; write-host ' ]      14. [ ' -NoNewline; write-host 'REMOVE ALL ITEMS' -ForegroundColor Red -NoNewline; write-host ' ]'"
echo -----------------------------------------------------------------------
echo  0. Exit
echo =======================================================================
set /p choice="Enter your choice (0-14): "

if "%choice%"=="0" exit
if "%choice%"=="13" goto ADD_ALL
if "%choice%"=="14" goto REMOVE_ALL

if "%choice%"=="1" set "ID=01_ThisPC" && set "NAME=This PC" && set "ICON=imageres.dll,-109" && set "CMD=explorer.exe =" && goto ACTION
if "%choice%"=="2" set "ID=02_Settings" && set "NAME=Settings" && set "ICON=SystemSettingsBroker.exe" && set "CMD=explorer.exe ms-settings:" && goto ACTION
if "%choice%"=="3" set "ID=03_ControlPanel" && set "NAME=Control Panel" && set "ICON=shell32.dll,-137" && set "CMD=control.exe" && goto ACTION
if "%choice%"=="4" set "ID=04_Chrome" && set "NAME=Google Chrome" && set "ICON=chrome.exe" && set "CMD=cmd.exe /c start chrome" && goto ACTION
if "%choice%"=="5" set "ID=05_RecycleBin" && set "NAME=Recycle Bin" && set "ICON=imageres.dll,-54" && set "CMD=explorer.exe shell:RecycleBinFolder" && goto ACTION
if "%choice%"=="6" set "ID=06_CMD" && set "NAME=Command Prompt" && set "ICON=cmd.exe" && set "CMD=cmd.exe" && goto ACTION
if "%choice%"=="7" set "ID=07_Store" && set "NAME=Microsoft Store" && set "ICON=winstore.app.exe" && set "CMD=explorer.exe ms-windows-store:" && goto ACTION
if "%choice%"=="8" set "ID=08_Downloads" && set "NAME=Downloads" && set "ICON=imageres.dll,-184" && set "CMD=explorer.exe shell:Downloads" && goto ACTION
if "%choice%"=="9" set "ID=09_Lock" && set "NAME=Lock PC" && set "ICON=shell32.dll,-48" && set "CMD=rundll32.exe user32.dll,LockWorkStation" && goto ACTION
if "%choice%"=="10" set "ID=10_Sleep" && set "NAME=Sleep" && set "ICON=shell32.dll,-330" && set "CMD=rundll32.exe powrprof.dll,SetSuspendState 0,1,0" && goto ACTION
if "%choice%"=="11" set "ID=11_Restart" && set "NAME=Restart" && set "ICON=shell32.dll,-239" && set "CMD=shutdown.exe /r /t 0" && goto ACTION
if "%choice%"=="12" set "ID=12_Shutdown" && set "NAME=Shutdown" && set "ICON=shell32.dll,-28" && set "CMD=shutdown.exe /s /t 0" && goto ACTION
goto MENU

:ACTION
cls
color 0E
echo ===================================================
echo  Chosen item: %NAME%
echo ===================================================
echo  [A] Add to right-click menu
echo  [R] Remove from right-click menu
echo  [B] Back to main list
echo ===================================================
set /p act="What do you want to do? (A/R/B): "

if /i "%act%"=="B" goto MENU
if /i "%act%"=="R" goto REMOVE
if /i "%act%"=="A" goto ADD
goto ACTION

:ADD
cls
color 0A
set KEY=HKCR\DesktopBackground\Shell\%ID%
reg add "%KEY%" /ve /d "%NAME%" /f >nul
reg add "%KEY%" /v "Icon" /d "%ICON%" /f >nul
reg add "%KEY%\command" /ve /d "%CMD%" /f >nul
echo ===================================================
echo  [ADDED] %NAME% is now on your right-click menu!
echo ===================================================
timeout /t 1 >nul
goto MENU

:REMOVE
cls
color 0C
set KEY=HKCR\DesktopBackground\Shell\%ID%
reg delete "%KEY%" /f >nul 2>&1
echo ===================================================
echo  [REMOVED] %NAME% was taken off your right-click menu!
echo ===================================================
timeout /t 1 >nul
goto MENU

:ADD_ALL
cls
color 0A
echo ===================================================
echo  Adding all 12 items to context menu...
echo ===================================================
set BASEKEY=HKCR\DesktopBackground\Shell
reg add "%BASEKEY%\01_ThisPC" /ve /d "This PC" /f >nul && reg add "%BASEKEY%\01_ThisPC" /v "Icon" /d "imageres.dll,-109" /f >nul && reg add "%BASEKEY%\01_ThisPC\command" /ve /d "explorer.exe =" /f >nul
reg add "%BASEKEY%\02_Settings" /ve /d "Settings" /f >nul && reg add "%BASEKEY%\02_Settings" /v "Icon" /d "SystemSettingsBroker.exe" /f >nul && reg add "%BASEKEY%\02_Settings\command" /ve /d "explorer.exe ms-settings:" /f >nul
reg add "%BASEKEY%\03_ControlPanel" /ve /d "Control Panel" /f >nul && reg add "%BASEKEY%\03_ControlPanel" /v "Icon" /d "shell32.dll,-137" /f >nul && reg add "%BASEKEY%\03_ControlPanel\command" /ve /d "control.exe" /f >nul
reg add "%BASEKEY%\04_Chrome" /ve /d "Google Chrome" /f >nul && reg add "%BASEKEY%\04_Chrome" /v "Icon" /d "chrome.exe" /f >nul && reg add "%BASEKEY%\04_Chrome\command" /ve /d "cmd.exe /c start chrome" /f >nul
reg add "%BASEKEY%\05_RecycleBin" /ve /d "Recycle Bin" /f >nul && reg add "%BASEKEY%\05_RecycleBin" /v "Icon" /d "imageres.dll,-54" /f >nul && reg add "%BASEKEY%\05_RecycleBin\command" /ve /d "explorer.exe shell:RecycleBinFolder" /f >nul
reg add "%BASEKEY%\06_CMD" /ve /d "Command Prompt" /f >nul && reg add "%BASEKEY%\06_CMD" /v "Icon" /d "cmd.exe" /f >nul && reg add "%BASEKEY%\06_CMD\command" /ve /d "cmd.exe" /f >nul
reg add "%BASEKEY%\07_Store" /ve /d "Microsoft Store" /f >nul && reg add "%BASEKEY%\07_Store" /v "Icon" /d "winstore.app.exe" /f >nul && reg add "%BASEKEY%\07_Store\command" /ve /d "explorer.exe ms-windows-store:" /f >nul
reg add "%BASEKEY%\08_Downloads" /ve /d "Downloads" /f >nul && reg add "%BASEKEY%\08_Downloads" /v "Icon" /d "imageres.dll,-184" /f >nul && reg add "%BASEKEY%\08_Downloads\command" /ve /d "explorer.exe shell:Downloads" /f >nul
reg add "%BASEKEY%\09_Lock" /ve /d "Lock PC" /f >nul && reg add "%BASEKEY%\09_Lock" /v "Icon" /d "shell32.dll,-48" /f >nul && reg add "%BASEKEY%\09_Lock\command" /ve /d "rundll32.exe user32.dll,LockWorkStation" /f >nul
reg add "%BASEKEY%\10_Sleep" /ve /d "Sleep" /f >nul && reg add "%BASEKEY%\10_Sleep" /v "Icon" /d "shell32.dll,-330" /f >nul && reg add "%BASEKEY%\10_Sleep\command" /ve /d "rundll32.exe powrprof.dll,SetSuspendState 0,1,0" /f >nul
reg add "%BASEKEY%\11_Restart" /ve /d "Restart" /f >nul && reg add "%BASEKEY%\11_Restart" /v "Icon" /d "shell32.dll,-239" /f >nul && reg add "%BASEKEY%\11_Restart\command" /ve /d "shutdown.exe /r /t 0" /f >nul
reg add "%BASEKEY%\12_Shutdown" /ve /d "Shutdown" /f >nul && reg add "%BASEKEY%\12_Shutdown" /v "Icon" /d "shell32.dll,-28" /f >nul && reg add "%BASEKEY%\12_Shutdown\command" /ve /d "shutdown.exe /s /t 0" /f >nul
echo ===================================================
echo  Success! All items have been added.
echo ===================================================
timeout /t 1 >nul
goto MENU

:REMOVE_ALL
cls
color 0C
echo ===================================================
echo  Removing all custom items from context menu...
echo ===================================================
set BASEKEY=HKCR\DesktopBackground\Shell
reg delete "%BASEKEY%\01_ThisPC" /f >nul 2>&1
reg delete "%BASEKEY%\02_Settings" /f >nul 2>&1
reg delete "%BASEKEY%\03_ControlPanel" /f >nul 2>&1
reg delete "%BASEKEY%\04_Chrome" /f >nul 2>&1
reg delete "%BASEKEY%\05_RecycleBin" /f >nul 2>&1
reg delete "%BASEKEY%\06_CMD" /f >nul 2>&1
reg delete "%BASEKEY%\07_Store" /f >nul 2>&1
reg delete "%BASEKEY%\08_Downloads" /f >nul 2>&1
reg delete "%BASEKEY%\09_Lock" /f >nul 2>&1
reg delete "%BASEKEY%\10_Sleep" /f >nul 2>&1
reg delete "%BASEKEY%\11_Restart" /f >nul 2>&1
reg delete "%BASEKEY%\12_Shutdown" /f >nul 2>&1
echo ===================================================
echo  Success! All items have been removed.
echo ===================================================
timeout /t 1 >nul
goto MENU