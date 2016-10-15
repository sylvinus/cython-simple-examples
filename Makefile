cython:
	rm -rf *.so
	cython --annotate *.pyx
	python setup.py build_ext --inplace

test: cython

	time python test2.pyx
	time python -c "import test2"
	time python -c "import test3"
	time python -c "import test4"
