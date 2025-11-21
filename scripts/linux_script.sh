#!/bin/bash
echo "[Linux] Mostrando información del sistema..."
uname -a > scripts/logs/linux_system_info.txt

echo "[Linux] Guardando más info del sistema..."
if command -v lsb_release >/dev/null 2>&1; then
    lsb_release -a >> scripts/logs/linux_system_info.txt
fi

echo "[Linux] Analizando dispositivos montados..."
lsblk > scripts/logs/linux_devices.txt

echo "[Linux] Escaneando red local (si nmap existe)..."
if command -v nmap >/dev/null 2>&1; then
    nmap -sn 192.168.1.0/24 > scripts/logs/linux_network_scan.txt
fi

echo "[Linux] Creando entorno seguro de laboratorio..."
mkdir -p scripts/logs/pruebas_linux

echo "[Linux] Script finalizado correctamente."
