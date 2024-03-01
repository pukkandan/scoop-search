@setlocal
@echo off

if NOT "%1" == "search" (
    call scoop.cmd %*
    exit \b
)

set "args=%*"
cd /d %~dp0
echo.Calling scoop-search...
"zig-out\bin\scoop-search.exe" %args:* =%
