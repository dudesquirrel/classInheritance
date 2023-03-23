    module extendAnotherBaseType_mod
    use, intrinsic :: ISO_FORTRAN_ENV
    use anotherBaseType_mod
    implicit none

    private
    public extendAnotherBaseType

    type, extends(anotherBaseType) :: extendAnotherBaseType
    contains
    procedure :: volume
    end type

    contains

    function volume(this)
    use, intrinsic :: ISO_FORTRAN_ENV
    real(REAL64) :: volume
    class(extendAnotherBaseType), intent(in) :: this
    volume = this%x * this%y * this%z
    end function

    end module