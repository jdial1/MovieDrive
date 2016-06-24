@ECHO off
mode 75,40
color 1F
Title Movie Drive
dir /b "%cd%/Movies/" > movies.txt
:Menu
ECHO .......!!!Movie Drive!!!.........
set /a count=0
for %%a in ("%cd%\Movies\*") do (call :incrementor "%%~na")
ECHO .....................................................................
SET /P M=Type 1, 2, .. then press ENTER:
for /F "skip=%M% delims=" %%i in (movies.txt) do (Start %cd%\VLCPortable\App\vlc\vlc.exe -vvv "%cd%\Movies\%%i" --fullscreen & GOTO Menu)
:incrementor
echo (%count%)%1
set /a count+=1
GOTO :EOF
