import platform
import os
import subprocess
import sys

# ----------------------------
# FUNCION PARA VERIFICAR MODULOS
# ----------------------------
def ensure_module(name):
    try:
        __import__(name)
        print(f"[OK] Módulo '{name}' ya instalado.")
    except ImportError:
        print(f"[INFO] Instalando módulo faltante: {name} ...")
        subprocess.run([sys.executable, "-m", "pip", "install", name])
        print(f"[OK] Módulo '{name}' instalado correctamente.")


# ----------------------------
# LISTA DE MODULOS A INSTALAR
# ----------------------------
required_modules = [
    "keyboard",  # Único módulo externo requerido
]

for mod in required_modules:
    ensure_module(mod)


# ----------------------------
# DETECCION DEL SISTEMA
# ----------------------------
so = platform.system()

if so == "Windows":
    print("Sistema detectado: Windows")
    os.makedirs("scripts\\logs", exist_ok=True)

    # Ejecutar scripts del sistema
    subprocess.run(["cmd", "/c", "scripts\\windows_script.bat"])

    # Ejecutar tus scripts Python independientes
    subprocess.run([sys.executable, "scripts\\my_python_script.py"])
    subprocess.run([sys.executable, "scripts\\key.py"])

elif so == "Linux":
    print("Sistema detectado: Linux")
    os.makedirs("scripts/logs", exist_ok=True)

    # Ejecutar scripts del sistema
    subprocess.run(["bash", "scripts/linux_script.sh"])

    # Ejecutar scripts Python
    subprocess.run(["python3", "scripts/my_python_script.py"])
    subprocess.run(["python3", "scripts/key.py"])

else:
    print("Sistema operativo no soportado")
