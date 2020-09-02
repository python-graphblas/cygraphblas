cimport cython
IF CYGB_SS:
    from cygraphblas.wrappertypes cimport _ss


@cython.final
cdef class Type:
    cdef readonly str name
    IF CYGB_SS:
        cdef _ss.GrB_Type ss_obj

    @staticmethod
    cdef Type _new(str name)
