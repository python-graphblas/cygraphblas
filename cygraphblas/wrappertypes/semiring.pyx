cdef class Semiring:
    def __init__(self):
        raise TypeError('Semiring may not be initialized')

    def __repr__(self):
        return f'Semiring({self.name})'

    @staticmethod
    cdef Semiring _new(str name):
        cdef Semiring obj = Semiring.__new__(Semiring)
        obj.name = name
        return obj
