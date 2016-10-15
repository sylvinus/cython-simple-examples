# cython-simple-examples

Extremely simple Cython examples.

From `test2` to `test4`, we show how to "cythonize" a Python code sample.

```
pip install cython
make test
```

Typical results:
```
time python test2.pyx
4999999950000000
        3.84 real         3.82 user         0.01 sys


time python -c "import test2"
4999999950000000

real	0m2.368s
user	0m2.345s
sys	0m0.017s


time python -c "import test3"
4999999950000000

real	0m2.872s
user	0m2.849s
sys	0m0.016s


time python -c "import test4"
4999999950000000

real	0m0.037s
user	0m0.013s
sys	0m0.017s
```

As you can see in `test4.html`, declaring a type for both `a` and `i` makes Cython translate most of the code to pure C, which produces a ~100x speedup!
