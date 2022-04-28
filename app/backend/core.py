""" 
/dev/ttyUSB0 
38400
python3 -m serial.tools.list_ports

01 01 77 19 00 00 00 00 00 6e ff 0d 0a
01 02 77 19 00 00 00 00 00 6d ff 0d 0a
01 04 77 19 00 00 00 00 00 6b ff 0d 0a
01 04 77 19 00 00 00 00 00 69 ff 0d 0a
01 07 01 19 00 00 00 00 00 1e ff 0d 0a
01 08 01 19 00 00 00 00 00 11 ff 0d 0a
01 09 02 19 00 00 00 00 00 13 ff 0d 0a
01 0b 77 19 00 00 00 00 00 64 ff 0d 0a
01 12 77 19 00 00 00 00 00 7d ff 0d 0a
01 0e 77 19 00 00 00 00 00 61 ff 0d 0a
01 0f 77 19 00 00 00 00 00 60 ff 0d 0a
01 10 77 19 00 00 00 00 00 7f ff 0d 0a
01 11 77 19 00 00 00 00 00 7e ff 0d 0a
01 06 77 19 00 00 00 00 00 69 ff 0d 0a

"""

import serial
from backend.decorators import benchmark


port = serial.Serial('/dev/ttyUSB0', baudrate=38400)
list_data = []
counts = 0



def read_data():
    # data = port.readline().hex()
    data = port.read(13).hex()
    print(f'data: {data}')


def parse_data():
    if port.isOpen():
        print(f'Порт { port.name } открыт')
        while True:
            data = read_data()

