cimport cython
from ..lib cimport _ss


@cython.final
cdef class Descriptor:
    cdef readonly str name
    cdef _ss.GrB_Descriptor ss_obj

    @staticmethod
    cdef Descriptor _new(str name)
