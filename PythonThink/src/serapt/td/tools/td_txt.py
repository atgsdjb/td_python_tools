'''

'''
def OAOD2OA(s,d,old="\r",new=" "):
   '''
   pacess line end , \r\n -> \n
   '''
   sf = open(s,'r')
   df =  open(d,'w')
   t_str=''
   for t_str in sf:
    pass
    if '\r' in t_str:
        print 'find ----1  \\r'
        t_str = t_str.replace(old,new)
    df.write(t_str)
if __name__ == '__main__':
#    OAOD2OA('old.txt','new.txt',"a","b")
    print 'begin-------------------'
    OAOD2OA("configure","conigure.bank")
    print 'end----------------------'
