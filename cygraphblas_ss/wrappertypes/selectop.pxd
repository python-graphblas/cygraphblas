cimport cython
from cygraphblas_ss.graphblas cimport GxB_SelectOp


@cython.final
cdef class SelectOp:
    cdef readonly str name
    cdef GxB_SelectOp ss_obj

    @staticmethod
    cdef SelectOp _new(str name)
