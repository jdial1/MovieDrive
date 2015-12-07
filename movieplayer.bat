@ECHO off
mode 75,40
color 1F
Title Movie Drive
dir /b "%cd%/Movies/" > movies.txt
:Menu
ECHO .....................................................................
ECHO "         __  __            _           _____       _               "
ECHO "        |  \/  |          (_)         |  __ \     (_)              "
ECHO "        | \  / | _____   ___  ___     | |  | |_ __ ___   _____     "
ECHO "        | |\/| |/ _ \ \ / / |/ _ \    | |  | | '__| \ \ / / _ \    "
ECHO "        | |  | | (_) \ V /| |  __/    | |__| | |  | |\ V /  __/    "
ECHO "        |_|  |_|\___/ \_/ |_|\___|    |_____/|_|  |_| \_/ \___|    "
ECHO .....................................................................
set /a count=0
for %%a in ("%cd%\Movies\*") do (call :incrementor "%%~na")
ECHO .....................................................................
SET /P M=Type 1, 2, .. then press ENTER:
for /F "skip=%M% delims=" %%i in (movies.txt) do (Start %cd%\VLCPortable\App\vlc\vlc.exe -vvv "%cd%\Movies\%%i" --fullscreen & GOTO Menu)
:incrementor
echo (%count%)%1
set /a count+=1
GOTO :EOF