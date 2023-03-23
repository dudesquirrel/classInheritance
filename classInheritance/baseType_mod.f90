    module baseType_mod
    use, intrinsic :: ISO_FORTRAN_ENV
    implicit none

    type, abstract :: baseType
        real(real64) :: x, y
    contains
    procedure :: print => baseType_print
    procedure(area_baseType), deferred :: area
    end type

    interface
    function area_baseType(this)
    use, intrinsic :: ISO_FORTRAN_ENV
    import :: baseType
    real(REAL64) :: area_baseType
    class(baseType), intent(in) :: this
    end function
    end interface

    contains

    subroutine baseType_print(this)
    class(baseType), intent(in) :: this
    print*, 'x,y',this%x, this%y
    end subroutine
    
    end module