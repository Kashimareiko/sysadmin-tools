:: Useful script when replacing mainly database files (.csv's, etc.) 
@echo off
setlocal

:: Specify the paths for the files
set "fileToRemove=C:\path\to\your\fileToRemove.txt"
set "fileToReplace=C:\path\to\your\replacementFile.txt"

:: Check if the file to remove exists
if exist "%fileToRemove%" (
    del "%fileToRemove%"
    echo Removed %fileToRemove%
) else (
    echo %fileToRemove% does not exist.
)

:: Copy the replacement file to the desired location
copy "%fileToReplace%" "C:\path\to\your\newFile.txt"
echo Replaced with %fileToReplace%

endlocal
