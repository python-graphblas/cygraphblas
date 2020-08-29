SHELL= /bin/bash
PYTHON ?= python

gen:
	$(PYTHON) scripts/automate.py

cy:
	$(PYTHON) setup.py build_ext --inplace

ss:
	$(PYTHON) setup_ss.py build_ext --inplace

inplace: cy ss

clean:
	rm -rf build/
	rm -rf cygraphblas/__pycache__/ cygraphblas/*/__pycache__/ cygraphblas/*/*/__pycache__/
	rm -rf cygraphblas_ss/__pycache__/
	rm -f cygraphblas/*.c cygraphblas/*.so cygraphblas/*/*.c cygraphblas/*/*.so cygraphblas/*/*/*.c cygraphblas/*/*/*.so
	rm -f cygraphblas_ss/*.c cygraphblas_ss/*.so
