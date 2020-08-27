cimport cython
from ..lib cimport _ss


@cython.final
cdef class UnaryOp:
    cdef readonly str name
    cdef _ss.GrB_UnaryOp ss_obj

    @staticmethod
    cdef UnaryOp _new(str name)
