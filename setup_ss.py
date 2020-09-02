from setuptools import Extension, setup, find_packages
from Cython.Build import cythonize
from Cython.Compiler.Options import get_directive_defaults

directive_defaults = get_directive_defaults()
# directive_defaults['embedsignature'] = True
directive_defaults['binding'] = True
directive_defaults['language_level'] = 3

support_ss = True
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
    Extension(
        'cygraphblas_ss.*.*',
        [f'cygraphblas_ss/*/*{suffix}'],
        libraries=['graphblas'],
    ),
    Extension(
        'cygraphblas_ss.*.*.*',
        [f'cygraphblas_ss/*/*/*{suffix}'],
        libraries=['graphblas'],
    ),
]
if use_cython:
    # TODO: get `compile_time_env` from cygraphblas
    ext_modules = cythonize(ext_modules, compile_time_env={'CYGB_SS': support_ss})

setup(
    name='cygraphblas_ss',
    version='0.0.0',
    description="Cython interface to SuiteSparse:GraphBLAS",
    url="https://github.com/metagraph-dev/cygraphblas",
    ext_modules=ext_modules,
    packages=find_packages('cygraphblas_ss'),
    package_data={'cygraphblas_ss': ['*.pyx', '*.pxd']},
    license="Apache License 2.0",
    include_package_data=True,
    zip_safe=False,
)

