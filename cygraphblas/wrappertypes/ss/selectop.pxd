cimport cython
from ...lib cimport _ss


@cython.final
cdef class SelectOp:
    cdef readonly str name
    cdef _ss.GxB_SelectOp ss_obj

    @staticmethod
    cdef SelectOp _new(str name)
