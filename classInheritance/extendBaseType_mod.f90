    module extendBaseType_mod
    use, intrinsic :: ISO_FORTRAN_ENV
    use baseType_mod
    implicit none

    private
    public extendBaseType

    type, extends(baseType) :: extendBaseType
    contains
    procedure :: area
    end type

    contains

    function area(this)
    use, intrinsic :: ISO_FORTRAN_ENV
    real(REAL64) :: area
    class(extendBaseType), intent(in) :: this
    area = this%x * this%y
    end function
    
    end module
