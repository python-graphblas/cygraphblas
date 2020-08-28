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
ctypedef GB_opaque *GxB_SelectOp
