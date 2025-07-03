@echo off
chcp 65001 >nul
title Reca7 --by lyrex
:ascii
echo.
echo ██████╗ ███████╗ ██████╗ █████╗ ███████╗
echo ██╔══██╗██╔════╝██╔════╝██╔══██╗╚════██║
echo ██████╔╝█████╗  ██║     ███████║    ██╔╝
echo ██╔══██╗██╔══╝  ██║     ██╔══██║   ██╔╝ 
echo ██║  ██║███████╗╚██████╗██║  ██║   ██║  
echo ╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝   ╚═╝      ADB-powered flashing tool
echo By the way, WE ARE NOT RESPONSIBLE FOR BRICKED PHONES, BRICKED COMPUTERS, DEAD SD CARDS, THERMONUCLEAR WAR. YOU WANTED THIS TOOL!
goto :inp
:inp
set /p cmd="Enter your selection (To use ADB, u need to ADB in your CMD path): "
if "%cmd%"=="adb" goto reboot
if "%cmd%"=="end" goto end
if "%cmd%"=="edl" goto edl
if "%cmd%"=="fastboot" goto fastboot
if "%cmd%"=="recovery" goto recovery
if "%cmd%"=="recognize" goto recognize
if "%cmd%"=="unl --oem" goto unloem
if "%cmd%"=="shell" goto shell
if "%cmd%"=="import" goto import
if "%cmd%"=="uninstall" goto remove
if "%cmd%"=="logs" goto logs
if "%cmd%"=="bootloader" goto bootloader
if "%cmd%"=="screenrecord" goto screenrecord
:reboot
adb reboot
echo Success.
goto :inp
:edl
adb reboot edl
echo Success.
goto :inp
:fastboot
adb reboot fastboot
echo Success.
goto :inp
:recovery
adb reboot recovery
echo Success.
goto :inp
:recognize
echo Active devices:
adb devices
echo Success.
goto :inp
:unloem
echo ARE YOU REALLY SURE? THIS WILL UNLOCK YOUR OEM, PRESS ENTER TO CONTINUE!
pause
fastboot oem unlock
echo Success.
goto :inp
:shell
adb shell
echo Success.
goto :inp
:import
set /p imp="Enter APK path/app name to import the app into your device: "
adb install %imp%
goto :inp
:remove
set /p rem="Enter APK path/app name to uninstall the app on your device: "
adb uninstall %rem%
goto :inp
:export
set /p path="Enter the path of exporting the file into your PC: "
adb pull %path%
goto inp
:bootloader
adb reboot bootloader
echo Success.
goto :inp
:reboot
adb reboot
echo Success.
goto :inp
:edl
adb reboot edl
echo Success.
goto :inp
:fastboot
adb reboot fastboot
echo Success.
goto :inp
:recovery
adb reboot recovery
echo Success.
goto :inp
:recognize
echo Active devices:
adb devices
echo Success.
goto :inp
:unloem
echo ARE YOU REALLY SURE? THIS WILL UNLOCK YOUR OEM, PRESS ENTER TO CONTINUE!
pause
adb reboot bootloader
fastboot oem unlock
echo Success.
goto :inp
:shell
adb shell
echo Success.
goto :inp
:import
set /p imp="Enter APK path/app name to import the app into your device: "
adb install %imp%
goto :inp
:remove
set /p rem="Enter APK path/app name to uninstall the app on your device: "
adb uninstall %rem%
goto :inp
:export
set /p path="Enter the path of exporting the file into your PC: "
adb pull %path%
goto :inp
:logs
adb logcat
echo Success.
goto :inp
:bootloader
adb reboot bootloader
echo Success.
goto :inp
:screenrecord
set /p psr="Enter path of device for saving the video: "
adb shell screenrecord %psr%
goto :inp
:end
pause
