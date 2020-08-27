cdef class Descriptor:
    def __init__(self):
        raise TypeError('Descriptor may not be initialized')

    def __repr__(self):
        return f'Descriptor({self.name})'

    @staticmethod
    cdef Descriptor _new(str name):
        cdef Descriptor obj = Descriptor.__new__(Descriptor)
        obj.name = name
        return obj

