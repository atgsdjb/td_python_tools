'''
Created on 2012-11-8

@author: root
'''
class Seraph:
    '''
    '''
    name = 'who???'
    def __init__(self,name):
        self.name = 'seraph'
    def showName(self):
        print(Seraph.name)
        print(self.name)
    '''-----------------'''
class Seraph2(Seraph):
    def showName(self):
        Seraph.showName(self)
    '''
    '''
    name = Seraph.name + '\t i im 2'
    '''-----------------'''
def createClass():
    class t1:
        def show(self):
            print('I am t1')
    pass
    return t1
t2 = createClass()()
t2.show()
