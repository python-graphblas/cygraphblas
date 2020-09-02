cdef class Format_Value:
    @staticmethod
    cdef Format_Value _new(str name):
        cdef Format_Value obj = Format_Value.__new__(Format_Value)
        obj.name = name
        return obj


cdef class Option_Field:
    @staticmethod
    cdef Option_Field _new(str name):
        cdef Option_Field obj = Option_Field.__new__(Option_Field)
        obj.name = name
        return obj


cdef class Print_Level:
    @staticmethod
    cdef Print_Level _new(str name):
        cdef Print_Level obj = Print_Level.__new__(Print_Level)
        obj.name = name
        return obj


cdef class Thread_Model:
    @staticmethod
    cdef Thread_Model _new(str name):
        cdef Thread_Model obj = Thread_Model.__new__(Thread_Model)
        obj.name = name
        return obj
