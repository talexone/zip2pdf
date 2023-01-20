#@echo off
setlocal
set destdir=%~d1%~p1%~n1
cd /d %~dp0

unzip -o %1 -d "%destdir%" 
