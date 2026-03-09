@echo off
setlocal

:: Access the full path using ZED_FILE
set "full_path=%ZED_FILE%"

:: Extract filename components
for %%F in ("%full_path%") do (
    set "file_dir=%%~dpF"
    set "filename_ext=%%~nxF"
    set "filename=%%~nF"
    set "extension=%%~xF"
)

:: Check the extension (Note: Windows extensions include the dot, e.g., ".py")
if /I "%extension%"==".py" (
    python "%full_path%"
) else if /I "%extension%"==".java" (
    java "%full_path%"
) else (
    echo no
)

endlocal
