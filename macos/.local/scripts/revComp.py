#!/Users/andavi/anaconda3/bin/python

import sys

def reverse_comlement(n):
    n_iter = list(n)
    rev_iter = []
    while len(n_iter) > 0:
        popped = int(n_iter.pop())

        rev_iter.append(str((10 - popped) % 10))
        # print(rev_iter)

    print(''.join(rev_iter))
    return


reverse_comlement(sys.argv[1])