import sys
from time import sleep
from PySide2.QtCore import QObject, QThread
from PySide2.QtCore import QObject, Slot, Signal, QUrl, QTimer
from PySide2.QtWidgets import (
    QApplication,
    QLabel,
    QMainWindow,
    QPushButton,
    QVBoxLayout,
    QWidget,
)
from PySide2 import QtWidgets

# Step 1: Create a worker class
class Worker(QObject):
    finished = Signal()
    progress = Signal(int)

    def run(self):
        """Long-running task."""
        for i in range(5):
            sleep(1)
            self.progress.emit(i + 1)
        self.finished.emit()


class Window(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.clicksCount = 0
        self.setupUi()

    def setupUi(self):
        self.setWindowTitle("Freezing GUI")
        self.resize(300, 150)
        self.centralWidget = QWidget()
        self.setCentralWidget(self.centralWidget)
        # Create and connect widgets
        self.clicksLabel = QLabel("Counting: 0 clicks", self)

        self.stepLabel = QLabel("Long-Running Step: 0")

        self.countBtn = QPushButton("Click me!", self)
        self.countBtn.clicked.connect(self.countClicks)
        self.longRunningBtn = QPushButton("Long-Running Task!", self)
        self.longRunningBtn.clicked.connect(self.runLongTask)
        # Set the layout
        layout = QVBoxLayout()
        layout.addWidget(self.clicksLabel)
        layout.addWidget(self.countBtn)
        layout.addStretch()
        layout.addWidget(self.stepLabel)
        layout.addWidget(self.longRunningBtn)
        self.centralWidget.setLayout(layout)

    def countClicks(self):
        self.clicksCount += 1
        self.clicksLabel.setText(f"Counting: {self.clicksCount} clicks")

    def reportProgress(self, n):
        self.stepLabel.setText(f"Long-Running Step: {n}")

    def runLongTask(self):
        """Long-running task in 5 steps."""
        for i in range(5):
            sleep(1)
            self.reportProgress(i + 1)

    def runLongTask(self):
        # Step 2: Create a QThread object
        self.thread = QThread()
        # Step 3: Create a worker object
        self.worker = Worker()
        # Step 4: Move worker to the thread
        self.worker.moveToThread(self.thread)
        # Step 5: Connect signals and slots
        self.thread.started.connect(self.worker.run)
        self.worker.finished.connect(self.thread.quit)
        self.worker.finished.connect(self.worker.deleteLater)
        self.thread.finished.connect(self.thread.deleteLater)
        self.worker.progress.connect(self.reportProgress)
        # Step 6: Start the thread
        self.thread.start()

        # Final resets
        self.longRunningBtn.setEnabled(False)
        self.thread.finished.connect(
            lambda: self.longRunningBtn.setEnabled(True)
        )
        self.thread.finished.connect(
            lambda: self.stepLabel.setText("Long-Running Step: 0")
        )



if __name__ == '__main__':
    import sys
    app = QtWidgets.QApplication(sys.argv)
    ex = Window()
    ex.show()
    sys.exit(app.exec_())

# class Window(QMainWindow):
#     # Snip...
#     def runLongTask(self):
#         # Step 2: Create a QThread object
#         self.thread = QThread()
#         # Step 3: Create a worker object
#         self.worker = Worker()
#         # Step 4: Move worker to the thread
#         self.worker.moveToThread(self.thread)
#         # Step 5: Connect signals and slots
#         self.thread.started.connect(self.worker.run)
#         self.worker.finished.connect(self.thread.quit)
#         self.worker.finished.connect(self.worker.deleteLater)
#         self.thread.finished.connect(self.thread.deleteLater)
#         self.worker.progress.connect(self.reportProgress)
#         # Step 6: Start the thread
#         self.thread.start()

#         # Final resets
#         self.longRunningBtn.setEnabled(False)
#         self.thread.finished.connect(
#             lambda: self.longRunningBtn.setEnabled(True)
#         )
#         self.thread.finished.connect(
#             lambda: self.stepLabel.setText("Long-Running Step: 0")
#         )