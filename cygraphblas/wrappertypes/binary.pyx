cdef class BinaryOp:
    def __init__(self):
        raise TypeError('BinaryOp may not be initialized')

    def __repr__(self):
        return f'BinaryOp({self.name})'

    @staticmethod
    cdef BinaryOp _new(str name):
        cdef BinaryOp obj = BinaryOp.__new__(BinaryOp)
        obj.name = name
        return obj
