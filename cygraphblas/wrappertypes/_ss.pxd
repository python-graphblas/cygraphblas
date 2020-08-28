ctypedef struct GB_opaque:
    void *_

# GrB
ctypedef GB_opaque *GrB_Vector
ctypedef GB_opaque *GrB_BinaryOp
ctypedef GB_opaque *GrB_Descriptor
ctypedef GB_opaque *GrB_Matrix
ctypedef GB_opaque *GrB_Monoid
ctypedef GB_opaque *GrB_Semiring
ctypedef GB_opaque *GrB_Type
ctypedef GB_opaque *GrB_UnaryOp
# GxB
ctypedef GB_opaque *GxB_Scalar
ctypedef GB_opaque *GxB_GxB_SelectOp

"""
ctypedef struct GB_BinaryOp_opaque:
    pass

ctypedef struct GB_Descriptor_opaque:
    pass


ctypedef struct GB_Matrix_opaque:
    pass


ctypedef struct GB_Monoid_opaque:
    pass


ctypedef struct GB_Semiring_opaque:
    pass


ctypedef struct GB_Type_opaque:
    pass


ctypedef struct GB_UnaryOp_opaque:
    pass


ctypedef struct GB_Vector_opaque:
    pass

ctypedef GB_Vector_opaque *GrB_Vector
ctypedef GB_BinaryOp_opaque *GrB_BinaryOp
ctypedef GB_Descriptor_opaque *GrB_Descriptor
ctypedef GB_Matrix_opaque *GrB_Matrix
ctypedef GB_Monoid_opaque *GrB_Monoid
ctypedef GB_Semiring_opaque *GrB_Semiring
ctypedef GB_Type_opaque *GrB_Type
ctypedef GB_UnaryOp_opaque *GrB_UnaryOp
"""
