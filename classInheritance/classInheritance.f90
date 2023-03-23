!  classInheritance.f90 
!
!  FUNCTIONS:
!  classInheritance - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: classInheritance
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program classInheritance
    use, intrinsic :: ISO_FORTRAN_ENV
    use extendBaseType_mod
    use extendAnotherBaseType_mod
    use extensionContainingTwoExpands_mod
    implicit none

    ! Variables
    type(extendBaseType) :: test
    type(extendAnotherBaseType) :: test2
    type(extensionContainingTwoExpands) :: test3
    
    ! Body of classInheritance
    test%x = 1
    test%y = 2
    print*, test%x, test%y
    print*, 'test1 ', test%area()
    
    test2%x = 1
    test2%y = 2
    test2%z = 3
    print*, 'test2 ', test2%volume()
    
    test3%name = 'testing'
    test3%bType = test
    test3%bType%test = 13
    test3%cType = test2
    

    pause
    end program classInheritance

