cdef class Desc_Field:
    @staticmethod
    cdef Desc_Field _new(str name):
        cdef Desc_Field obj = Desc_Field.__new__(Desc_Field)
        obj.name = name
        return obj


cdef class Desc_Value:
    @staticmethod
    cdef Desc_Value _new(str name):
        cdef Desc_Value obj = Desc_Value.__new__(Desc_Value)
        obj.name = name
        return obj


cdef class Info:
    @staticmethod
    cdef Info _new(str name):
        cdef Info obj = Info.__new__(Info)
        obj.name = name
        return obj


cdef class Mode:
    @staticmethod
    cdef Mode _new(str name):
        cdef Mode obj = Mode.__new__(Mode)
        obj.name = name
        return obj
