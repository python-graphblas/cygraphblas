cimport cython
from ..lib cimport _ss


@cython.final
cdef class Semiring:
    cdef readonly str name
    cdef _ss.GrB_Semiring ss_obj

    @staticmethod
    cdef Semiring _new(str name)
