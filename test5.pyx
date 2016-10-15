from libc.stdlib cimport rand

cdef int f():
	# We are not seeding so this will always return the same number :)
	# Main interest is looking at the extra '#include "stdlib.h"' in test4.c
    return rand()

print f()