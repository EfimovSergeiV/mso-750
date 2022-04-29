# This Python file uses the following encoding: utf-8
import os
import sys
from pathlib import Path
from PySide2.QtWidgets import QApplication
from PySide2.QtQml import QQmlApplicationEngine

from backend.core import parse_data

from backend.example import Example
os.environ["QT_IM_MODULE"] = "qtvirtualkeyboard"

import serial

if __name__ == "__main__":
    app = QApplication([])


    # port = serial.Serial('/dev/ttyUSB0', baudrate=38400)
    # data = port.read(13).hex()
    # bytes = [data[i:i+2] for i in range(0, len(data), 2)]
    # print(f'data: {bytes[0]} {bytes[1]} {bytes[2]} {bytes[3]} {bytes[4]} {bytes[5]} {bytes[6]} {bytes[7]} {bytes[8]} {bytes[9]} {bytes[10]} {bytes[11]} {bytes[12]}')
    
    # if bytes[1] == '0b' and bytes[2] == '77':
    #     print(f'\nПолучен пакет данных от модуля 0B77\n')

    engine = QQmlApplicationEngine()
    engine.load(os.fspath(Path(__file__).resolve().parent / "src/main.qml"))

    example = Example()
    engine.rootContext().setContextProperty("example", example)

    sys.exit(app.exec_())
