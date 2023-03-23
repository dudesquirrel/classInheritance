    module extendTwoBases_mod
    use, intrinsic :: ISO_FORTRAN_ENV
    use baseType_mod
    use anotherBaseType_mod
    implicit none

    type, abstract :: extendTwoBases
        character(:),allocatable :: name
        class(baseType),allocatable :: bType
        class(anotherBaseType),allocatable :: cType
    contains
    procedure :: print => extendTypeBases_print
    end type

    contains

    subroutine extendTypeBases_print(this)
    class(extendTwoBases), intent(in) :: this
    print*, 'name ', this%name
    end subroutine

    end module