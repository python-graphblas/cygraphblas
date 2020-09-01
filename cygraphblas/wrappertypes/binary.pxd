cimport cython
IF CYGB_SS:
    from cygraphblas.wrappertypes cimport _ss


@cython.final
cdef class BinaryOp:
    cdef readonly str name
    IF CYGB_SS:
        cdef _ss.GrB_BinaryOp ss_obj

    @staticmethod
    cdef BinaryOp _new(str name)
    IF CYGB_SS:
        cdef void set_ss(self, _ss.GrB_BinaryOp ss_obj)
