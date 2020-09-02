cimport cython


@cython.final
cdef class Desc_Field:
    cdef readonly str name
    IF CYGB_SS:
        cdef int ss_obj
    @staticmethod
    cdef Desc_Field _new(str name)


@cython.final
cdef class Desc_Value:
    cdef readonly str name
    IF CYGB_SS:
        cdef int ss_obj
    @staticmethod
    cdef Desc_Value _new(str name)


@cython.final
cdef class Info:
    cdef readonly str name
    IF CYGB_SS:
        cdef int ss_obj
    @staticmethod
    cdef Info _new(str name)


@cython.final
cdef class Mode:
    cdef readonly str name
    IF CYGB_SS:
        cdef int ss_obj
    @staticmethod
    cdef Mode _new(str name)
