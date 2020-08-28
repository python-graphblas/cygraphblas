from setuptools import Extension, setup
from Cython.Build import cythonize
from Cython.Compiler.Options import get_directive_defaults

directive_defaults = get_directive_defaults()
# directive_defaults['embedsignature'] = True
# directive_defaults['binding'] = True
directive_defaults['language_level'] = 3

use_cython = True
if use_cython:
    suffix = '.pyx'
else:
    suffix = '.c'

ext_modules = [
    Extension(
        'cygraphblas_ss.*',
        [f'cygraphblas_ss/*{suffix}'],
        libraries=['graphblas'],
    ),
    # Extension(
    #     'cygraphblas_ss.*.*',
    #     [f'cygraphblas_ss/*/*{suffix}'],
    #     libraries=['graphblas'],
    # ),
    # Extension(
    #     'cygraphblas_ss.*.*.*',
    #     [f'cygraphblas_ss/*/*/*{suffix}'],
    #     libraries=['graphblas'],
    # ),
]
if use_cython:
    ext_modules = cythonize(ext_modules)

setup(
    name='cygraphblas_ss',
    version='0.0.0',
    ext_modules=ext_modules,
    packages='cygraphblas_ss',
    package_data={'cygraphblas_ss': ['*.pyx', '*.pxd']},
    zip_safe=False,
)

