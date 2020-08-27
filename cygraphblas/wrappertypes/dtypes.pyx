cdef class Type:
    def __init__(self):
        raise TypeError('Type may not be initialized')

    def __repr__(self):
        return f'Type({self.name})'

    @staticmethod
    cdef Type _new(str name):
        cdef Type obj = Type.__new__(Type)
        obj.name = name
        return obj

