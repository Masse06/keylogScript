Proyecto de pendrive multiplataforma (Windows + Linux)

1. Requisitos
   - Python instalado en el sistema
   - Permisos para ejecutar scripts (.bat en Windows, .sh en Linux)

2. Para ejecutar:
   Windows:
     - Doble clic en start.py (si tienes python asociado)
     - O abre CMD y ejecuta: python start.py

   Linux:
     - chmod +x scripts/linux_script.sh (solo la primera vez)
     - python3 start.py

3. Salida:
   Todos los logs aparecen en:
      scripts/logs/

4. Scripts realizados:
   - Windows: systeminfo, netstat, dispositivos USB, entorno de pruebas
   - Linux: uname, lsb_release, lsblk, nmap (si está instalado)
   - Python: log básico con fecha y SO

Proyecto educativo seguro para práctica de ciberseguridad.
