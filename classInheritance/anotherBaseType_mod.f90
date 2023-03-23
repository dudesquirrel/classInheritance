    module anotherBaseType_mod
    use, intrinsic :: ISO_FORTRAN_ENV
    implicit none

    type, abstract :: anotherBaseType
        real(real64) :: x, y, z
    contains
    procedure :: print => baseType_print
    procedure(volume_baseType), deferred :: volume
    end type

    interface
    function volume_baseType(this)
    use, intrinsic :: ISO_FORTRAN_ENV
    import :: anotherBaseType
    real(REAL64) :: volume_baseType
    class(anotherBaseType), intent(in) :: this
    end function
    end interface

    contains

    subroutine baseType_print(this)
    class(anotherBaseType), intent(in) :: this
    print*, 'x,y,z',this%x, this%y, this%z
    end subroutine
    
    end module