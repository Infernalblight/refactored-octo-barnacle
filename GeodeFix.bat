@echo off
set STEAM_EXE="C:\Program Files (x86)\Steam\steam.exe"
set APP_ID=322170
set DEPOT_ID=322171
set MANIFEST_ID=7678373534998244044
set CONTENT_DIR=%ProgramFiles(x86)%\Steam\steamapps\content\app_%APP_ID%\depot_%DEPOT_ID%

start "" %STEAM_EXE% steam://open/console
timeout /t 3 >nul
%STEAM_EXE% -console +download_depot %APP_ID% %DEPOT_ID% %MANIFEST_ID% +quit
:wait
if not exist "%CONTENT_DIR%" (
    timeout /t 2 >nul
    goto wait
)
start "" "%CONTENT_DIR%"
