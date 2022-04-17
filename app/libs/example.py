from PySide2 import QtCore
from PySide2.QtCharts import QtCharts
from PySide2.QtCore import QObject, Slot, Signal, QUrl, QTimer
import datetime, random


class Example(QObject):
    """ Класс для демонстрации работы интерфейса """

    def __init__(self):
        QObject.__init__(self)
        # self._person_name = [
        #     QtCore.QPointF(1, 1),
        #     QtCore.QPointF(2, 2),
        #     QtCore.QPointF(3, 3),
        #     QtCore.QPointF(4, 4),
        # ]

        # QTimer - Run Timer
        self.timer = QTimer()
        self.timer.timeout.connect(lambda: self.setTime())
        self.timer.start(3000)


    # Signal Set Data
    printTime = Signal(str)
    setName = Signal(str)
    # nextNumber = Signal(str)

    # @Slot()
    # def giveNumber(self):
    #     print("I Work")
    #     self.nextNumber.emit(random.randint(0, 99))


    # # Открывает файл в Qt
    # @Slot(str)
    # def openFile(self, filePath):
    #     file = open(QUrl(filePath).toLocalFile(), encoding="utf-8")
    #     text = file.read()
    #     file.close()
    #     print(text)
    #     self.readText.emit(str(text))

    # Меняет label по нажатию кнопки
    @Slot(str)
    def welcomeText(self):
        self.setName.emit('name')

    # Предоставляет время по счётчику
    def setTime(self):
        value_list = [0, 25, 50, 75, 100, 500, 1000, 1500, 3000]
        a = random.randint(0, len(value_list)-1)
        formatDate = str(value_list[a])
        self.printTime.emit(formatDate)

    # Выводит в консоль сообщение из кнопки
    @Slot(str)
    def alert(self, message):
        print("Message::")
        print(message)
        self.generate_points()


    @Slot(str)
    def chart_data(self, message):
        print("Message::")
        print(message)
        self.generate_points()
