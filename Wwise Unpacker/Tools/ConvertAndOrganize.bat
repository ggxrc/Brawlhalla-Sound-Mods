@echo off
setlocal EnableDelayedExpansion

REM Get current date and time for folder name
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
set timestamp=%datetime:~0,8%_%datetime:~8,6%

REM Create destination folder
set "destFolder=..\OGG\%timestamp%"
mkdir "%destFolder%"
echo Folder created: %destFolder%

REM Check if there are any .wem files to convert
set fileCount=0
for %%F in ("..\Game Files\*.wem") do set /a fileCount+=1
if %fileCount% equ 0 (
    echo No .wem files found in Game Files folder.
    goto :EOF
)

echo Starting conversion of %fileCount% .wem files to .ogg...
echo.

REM Process each .wem file
set success=0
for %%F in ("..\Game Files\*.wem") do (
    echo Converting: %%~nxF
    
    REM Run ww2ogg to convert .wem to .ogg
    .\ww2ogg.exe "..\Game Files\%%~nxF" --pcb .\packed_codebooks_aoTuV_603.bin -o ".\%%~nF.ogg"
    
    REM Check if conversion was successful
    if exist ".\%%~nF.ogg" (
        echo %%~nxF successfully converted.
        
        REM Run revorb to optimize the .ogg file
        .\revorb.exe ".\%%~nF.ogg"
        
        REM Move .ogg file to destination folder
        move ".\%%~nF.ogg" "%destFolder%\"
        
        REM Delete the original .wem file
        del "..\Game Files\%%~nxF"
        
        set /a success+=1
    ) else (
        echo Failed to convert %%~nxF.
    )
    
    echo.
)

echo Conversion completed. %success% of %fileCount% files were successfully converted.
echo OGG files saved to: %destFolder%
echo Successfully converted .wem files have been deleted.

pause
