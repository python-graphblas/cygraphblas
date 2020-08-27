cdef class UnaryOp:
    def __init__(self):
        raise TypeError('UnaryOp may not be initialized')

    def __repr__(self):
        return f'UnaryOp({self.name})'

    @staticmethod
    cdef UnaryOp _new(str name):
        cdef UnaryOp obj = UnaryOp.__new__(UnaryOp)
        obj.name = name
        return obj

