@echo off
echo Compiling University ERP System...
if not exist out mkdir out
for /r src %%f in (*.java) do set SOURCES=!SOURCES! "%%f"
javac -d out -sourcepath src %SOURCES%
if %errorlevel% == 0 (
    echo.
    echo Compilation successful! Run  run.bat  to launch.
) else (
    echo.
    echo Compilation FAILED. Make sure JDK is installed and JAVA_HOME is set.
)
pause
