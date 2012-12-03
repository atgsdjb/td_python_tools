import re
import os
r = re.compile('0x[1-9a-f]+')    
m = r.match('0x12d2')
print(m.group())
m2 = re.match("0(x|X)[1-9a-fA-F][0-9a-fA-F]+",'0x122202345f')
print(m2.group())
str = os.popen('dir','r')
l =[i for range(12)]
print l
print type(l)
print(str)
