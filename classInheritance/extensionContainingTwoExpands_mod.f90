module extensionContainingTwoExpands_mod
    use, intrinsic :: ISO_FORTRAN_ENV
    use extendTwoBases_mod
    implicit none
    
    type, extends(extendTwoBases) :: extensionContainingTwoExpands
    contains
    end type
    
    end module