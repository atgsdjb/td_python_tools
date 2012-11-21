#!python
#import math
from random import randint
def train(count,repeat = 3,timeout= 10**20):
    while True:
        x = randint(10,100)
        y = randint(10,100)
        result = x*y
        lrepeat = repeat
        print "%d*%d=" %(x,y)
        while True:
            try:
                d = int(raw_input("plase input number"))
                if d == result :
                    break
            except EOFError:
                exit()
            except ValueError :
                print "make sure your's input's is number"
            lrepeat -=1
            if lrepeat == 0 :
                print "Wrong answer!!!"
                break
        count -=1
        if count == 0:
            print("THE END")
            break
if __name__ =="__main__":
    import sys
    count = 10
    repeat = 3
    if len(sys.argv) >1:
        try:
            count = int(sys.argv[1])
        except ValueError:
            pass
    if len(sys.argv) >2:
        try :
            repeat = int(sys.argv[2])
        except ValueError :
            pass
    train(count,repeat)