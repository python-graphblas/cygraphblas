cimport cython
from cygraphblas.wrappertypes cimport _ss


@cython.final
cdef class Type:
    cdef readonly str name
    cdef _ss.GrB_Type ss_obj

    @staticmethod
    cdef Type _new(str name)
    cdef void set_ss(self, _ss.GrB_Type ss_obj)
