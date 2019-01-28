@echo off
REM V Launcher

@echo off

REM --------------
REM config
REM --------------

cd /d %~dp0

REM Directory with virtualization software (VirtualBox.exe)
REM (* It may be possible to use VMware, but I have not tried it.)
SET VIRTUALIZATIONSOFTWARE_DIR=

REM Project directory
SET PROJECT_DIR=

REM ---------------------------------------------------

echo **** V Launcher ****

echo V Launcher is executeing...

cd %VIRTUALIZATIONSOFTWARE_DIR%

REM * By default it is written assuming to use VirtualBox.
start VirtualBox.exe

cd %PROJECT_DIR%

echo vagrant up command execute.
vagrant up

cmd /k cd %PROJECT_DIR%
