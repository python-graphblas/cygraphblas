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
        'cygraphblas.*',
        [f'cygraphblas/*{suffix}'],
    ),
    Extension(
        'cygraphblas.*.*',
        [f'cygraphblas/*/*{suffix}'],
    ),
    Extension(
        'cygraphblas.*.*.*',
        [f'cygraphblas/*/*/*{suffix}'],
    ),
]
if use_cython:
    ext_modules = cythonize(ext_modules, compile_time_env={'CYGB_SS': support_ss})

setup(
    name='cygraphblas',
    version='0.0.0',
    description="Cython interface to GraphBLAS",
    author="Erik Welch",
    url="https://github.com/metagraph-dev/cygraphblas",
    # setup_requires=["cython", "pytest-runner"],
    python_requires=">=3.7",
    license="Apache License 2.0",
    ext_modules=ext_modules,
    packages=find_packages('cygraphblas'),
    package_data={'cygraphblas': ['*.pyx', '*.pxd']},
    include_package_data=True,
    zip_safe=False,
)

