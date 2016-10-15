
cdef long func():
    cdef long a
    cdef long i
    a = 0
    for i in xrange(0, 100000000):
        a += i
    return a

res = func()
print res