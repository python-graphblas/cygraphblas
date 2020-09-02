cimport cython
IF CYGB_SS:
    from cygraphblas.wrappertypes cimport _ss


@cython.final
cdef class UnaryOp:
    cdef readonly str name
    IF CYGB_SS:
        cdef _ss.GrB_UnaryOp ss_obj

    @staticmethod
    cdef UnaryOp _new(str name)
