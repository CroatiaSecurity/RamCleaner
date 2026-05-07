<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 3c479efe17479d82471b0fc670d9eb43f01e5740
@echo off

:: Step 1: Elevate
>nul 2>&1 fsutil dirty query %systemdrive% || echo CreateObject^("Shell.Application"^).ShellExecute "%~0", "ELEVATED", "", "runas", 1 > "%temp%\uac.vbs" && "%temp%\uac.vbs" && exit /b
DEL /F /Q "%temp%\uac.vbs"

:: Step 2: Initialize environment
setlocal EnableExtensions EnableDelayedExpansion

:: Step 3: Move to the script directory
cd /d %~dp0
cd Bin

:: Step 5: Execute CMD (.cmd) files alphabetically
echo Executing CMD scripts...
for /f "tokens=*" %%B in ('dir /b /o:n *.cmd') do (
    echo Running %%B...
    call "%%B"
)

echo Script completed successfully.
exit
<<<<<<< HEAD
=======
@echo off

:: Step 1: Elevate
>nul 2>&1 fsutil dirty query %systemdrive% || echo CreateObject^("Shell.Application"^).ShellExecute "%~0", "ELEVATED", "", "runas", 1 > "%temp%\uac.vbs" && "%temp%\uac.vbs" && exit /b
DEL /F /Q "%temp%\uac.vbs"

:: Step 2: Initialize environment
setlocal EnableExtensions EnableDelayedExpansion

:: Step 3: Move to the script directory
cd /d %~dp0
cd Bin

:: Step 5: Execute CMD (.cmd) files alphabetically
echo Executing CMD scripts...
for /f "tokens=*" %%B in ('dir /b /o:n *.cmd') do (
    echo Running %%B...
    call "%%B"
)

echo Script completed successfully.
exit
>>>>>>> 422770edab57e0ee5641c5f3d9d86f263859755f
=======
>>>>>>> 3c479efe17479d82471b0fc670d9eb43f01e5740
