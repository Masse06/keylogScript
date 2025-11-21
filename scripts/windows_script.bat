@echo off

echo [Windows] Mostrando información del sistema...
systeminfo > scripts\logs\windows_system_info.txt

echo [Windows] Detectando dispositivos USB conectados...
powershell -command "Get-CimInstance -ClassName Win32_LogicalDisk | Where-Object { $_.DriveType -eq 2 } | Select-Object DeviceID, VolumeName" > scripts\logs\windows_usb_info.txt

echo [Windows] Escaneando puertos locales...
netstat -an > scripts\logs\windows_ports.txt

echo [Windows] Creando entorno seguro de pruebas...
mkdir scripts\logs\pruebas_windows 2>nul

echo [Windows] Script finalizado correctamente.
