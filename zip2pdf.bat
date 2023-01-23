setlocal
set destdir=%~d1%~p1%~n1
cd /d %~dp0

unzip -o %1 -d "%destdir%" 

call sejda-console merge -f "%destdir%\*.pdf" -o "%destdir%".pdf --overwrite

del "%destdir%\*" /q

rmdir "%destdir%" /q