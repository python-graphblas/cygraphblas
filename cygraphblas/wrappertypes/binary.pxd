cimport cython
from ..lib cimport _ss


@cython.final
cdef class BinaryOp:
    cdef readonly str name
    cdef _ss.GrB_BinaryOp ss_obj

    @staticmethod
    cdef BinaryOp _new(str name)
