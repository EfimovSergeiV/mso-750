def benchmark(func):
    """ Декоратор для отслеживания времени выполнения функции """
    import time

    def wrapper():
        start = time.time()
        func()
        end = time.time()
        print("Time taken: {}".format(end - start))
    return wrapper