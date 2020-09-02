cimport cython
IF CYGB_SS:
    from cygraphblas.wrappertypes cimport _ss


@cython.final
cdef class Descriptor:
    cdef readonly str name
    IF CYGB_SS:
        cdef _ss.GrB_Descriptor ss_obj

    @staticmethod
    cdef Descriptor _new(str name)
