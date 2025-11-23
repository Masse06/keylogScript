@echo off
set PYTHON_VERSION=3.12.0
set INSTALLER=python-%PYTHON_VERSION%-amd64.exe
set URL=https://www.python.org/ftp/python/%PYTHON_VERSION%/%INSTALLER%

echo Descargando Python %PYTHON_VERSION%...
powershell -Command "(New-Object Net.WebClient).DownloadFile('%URL%', '%INSTALLER%')"

echo Instalando Python...
%INSTALLER% /quiet InstallAllUsers=1 PrependPath=1 Include_test=0

echo Eliminando instalador...
del %INSTALLER%

echo Instalación completada. Verificando versión:
python --version

pause
