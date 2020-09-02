cimport cython


@cython.final
cdef class Format_Value:
    cdef readonly str name
    cdef int ss_obj
    @staticmethod
    cdef Format_Value _new(str name)


@cython.final
cdef class Option_Field:
    cdef readonly str name
    cdef int ss_obj
    @staticmethod
    cdef Option_Field _new(str name)


@cython.final
cdef class Print_Level:
    cdef readonly str name
    cdef int ss_obj
    @staticmethod
    cdef Print_Level _new(str name)


@cython.final
cdef class Thread_Model:
    cdef readonly str name
    cdef int ss_obj
    @staticmethod
    cdef Thread_Model _new(str name)
