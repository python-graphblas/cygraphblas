SHELL= /bin/bash
PYTHON ?= python

gen:
	pushd scripts
	$(PYTHON) automate.py
	popd

cy:
	$(PYTHON) setup.py build_ext --inplace

ss:
	$(PYTHON) setup_ss.py build_ext --inplace

inplace: cy ss

clean:
	rm -f cygraphblas/*.c cygraphblas/*.so cygraphblas/*/*.c cygraphblas/*/*.so cygraphblas/*/*/*.c cygraphblas/*/*/*.so
	rm -rf build/ cygraphblas/__pycache__/ cygraphblas/*/__pycache__/ cygraphblas/*/*/__pycache__/
