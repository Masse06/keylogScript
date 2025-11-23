#!/bin/bash

echo "Detectando distribución..."

if [ -f /etc/debian_version ]; then
    echo "Debian/Ubuntu detectado"
    sudo apt update
    sudo apt install -y python3 python3-pip
elif [ -f /etc/redhat-release ]; then
    echo "RHEL/CentOS/Fedora detectado"
    sudo dnf install -y python3 python3-pip
elif [ -f /etc/arch-release ]; then
    echo "Arch Linux detectado"
    sudo pacman -Sy --noconfirm python python-pip
else
    echo "Distribución no soportada automáticamente."
    echo "Instala Python manualmente."
    exit 1
fi

echo "Verificando instalación:"
python3 --version
pip3 --version
