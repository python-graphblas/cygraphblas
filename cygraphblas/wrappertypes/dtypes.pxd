cimport cython
from ..lib cimport _ss


@cython.final
cdef class Type:
    cdef readonly str name
    cdef _ss.GrB_Type ss_obj

    @staticmethod
    cdef Type _new(str name)
