def f():
    print '%s------'
    while True:
        x = yield 12
        print(x)
        y = yield 13
        print