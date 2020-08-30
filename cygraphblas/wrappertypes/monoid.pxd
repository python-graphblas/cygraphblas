cimport cython
from cygraphblas.wrappertypes cimport _ss


@cython.final
cdef class Monoid:
    cdef readonly str name
    cdef _ss.GrB_Monoid ss_obj

    @staticmethod
    cdef Monoid _new(str name)
    cdef void set_ss(self, _ss.GrB_Monoid ss_obj)
