cimport cython
from . cimport _ss


@cython.final
cdef class Descriptor:
    cdef readonly str name
    cdef _ss.GrB_Descriptor ss_obj

    @staticmethod
    cdef Descriptor _new(str name)
    cdef void set_ss(self, _ss.GrB_Descriptor ss_obj)
