#!/Users/andavi/anaconda3/bin/python

import sys, pyperclip

# enumarte a string into white space seperatetd words
# print, return, and paste to clipboard the result on successful exit

def enumStr(aString):
    eList = list(enumerate(aString.split()))
    seList = [str(x[0]) + ': ' + x[1] for x in eList]
    eStr = '\n'.join(seList)
    pyperclip.copy(eStr)
    print(eStr)
    return eStr

enumStr(sys.argv[1])