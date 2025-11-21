import platform
import datetime
import os

so = platform.system()
log_dir = "scripts/logs"

if so == "Windows":
    log_file = os.path.join(log_dir, "python_log_windows.txt")
else:
    log_file = os.path.join(log_dir, "python_log_linux.txt")

with open(log_file, "a") as f:
    f.write(f"Script Python ejecutado en {so} el {datetime.datetime.now()}\n")

print(f"[Python] Script ejecutado en {so}. Log guardado en {log_file}")
