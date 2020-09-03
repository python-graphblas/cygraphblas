# Cygraphblas

`cygraphblas` is a Cython library for GraphBLAS.  It is able to support multiple GraphBLAS implementations simultaneously.

`cygraphblas_ss` is a Cython wrapper around [SuiteSparse:GraphBLAS](https://github.com/DrTimothyAldenDavis/GraphBLAS/).  This is the default backend for `cygraphblas`.

These are still early in its development and not yet ready for use.  Feel free to [reach out](https://github.com/metagraph-dev/cygraphblas/issues).

## Vision

We hope to learn from and improve upon the other Python GraphBLAS wrappers [grblas](https://github.com/metagraph-dev/grblas) and [pygraphblas](https://github.com/michelp/pygraphblas).  We love the clean style of `grblas` and appreciate the additional functionality of `pygraphblas`.  Two fundamental design decisions set `cygraphblas` apart:
  1. The use of Cython for uncompromising speed and usability
  2. Architected to support multiple GraphBLAS implementations from day 1

We believe these design decisions will provide a foundation that better serve all parties.

- **End user:**
  - We offer a consistent API for multiple implementations
  - It is clear what is pure GraphBLAS and what is backend-specific
  - We control all objects the user interacts with, so we can make them friendly (such as adding docstrings)
- **GraphBLAS implementer:**
  - Connect to a well-defined Cython interface (at the speed of C)
  - Get end-user API (and tests!) "for free"
  - Easily expose extra functionality to users
- **Python library developer:**
  - May use backend-specific functionality, because we can support multiple backends at the same time
  - May use Python or Cython API
    - Many libraries in the PyData ecosystem use Cython for performance-critical sections and would prefer to connect to `cygraphblas` in Cython

We also think [LAGraph](https://github.com/GraphBLAS/LAGraph) will be much nicer wrapped by Cython.  There's a lot more we'd like to say, but we have work to do ;)