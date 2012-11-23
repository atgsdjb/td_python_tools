'''
'''
import sys
def show(countOfLine):
    '''
    '''
    print 'call show'
    pass
def write4fomart(s_file,d_file,r,c):
    '''
    '''
    pass
def write_head(str):
    '''
    '''
if __name__ == '__main__':
    if len(sys.argv) <3 :
        print '''Usage log.py *.log [-h] get hellp,[-s]=c show NO c line ,[-f]= filename -r=[1,2,3,4] [-c]=count write to file 
        '''
        exit()
    s_log = open(sys.argv[1],'r')
    param ={t[1:2]:t[3:] for t in sys.argv[1:]}
    if 's' in param:
        show(param['s'])
        s = raw_input('pass any key exit')
        exit()
    if 'f' in param:
        '''-------------'''
        d_file = open(param['f'],'w')
        r = None
        c = -1
        if 'r' in param:
            r = param['r']
        if 'c' in param:
            try:
                c = int(param['c'])
            except ValueError:
                pass
        
        
    