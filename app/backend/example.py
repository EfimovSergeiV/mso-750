from PySide2 import QtCore
from PySide2.QtCharts import QtCharts
from PySide2.QtCore import QObject, Slot, Signal, QUrl, QTimer
import datetime, random

import serial
from backend.decorators import benchmark

class Example(QObject):
    """ Класс демонстрации """

    def __init__(self):
        QObject.__init__(self)
        self.timer = QTimer()
        self.timer.timeout.connect(lambda: self.SensorOne())
        self.timer.start(600)

    # Signals
    sensorOne = Signal(str)


    def SensorOne(self):
        """ Пример сигнала """
        port = serial.Serial('/dev/ttyUSB0', baudrate=38400)
        data = port.read(13).hex()
        bytes = [data[i:i+2] for i in range(0, len(data), 2)]
        print(f'data: {bytes[0]} {bytes[1]} {bytes[2]} {bytes[3]} {bytes[4]} {bytes[5]} {bytes[6]} {bytes[7]} {bytes[8]} {bytes[9]} {bytes[10]} {bytes[11]} {bytes[12]}')
        
        if bytes[1] == '0b' and bytes[2] == '77':
            print(f'\nПолучен пакет данных от модуля 0B77\n')

            value_list = range(300, 500)
            a = random.randint(0, len(value_list)-1)
            formatDate = str(value_list[a])
            self.sensorOne.emit(formatDate)
