cimport cython
IF CYGB_SS:
    from cygraphblas.wrappertypes cimport _ss


@cython.final
cdef class Semiring:
    cdef readonly str name
    IF CYGB_SS:
        cdef _ss.GrB_Semiring ss_obj

    @staticmethod
    cdef Semiring _new(str name)
