      PROGRAM MAIN
      IMPLICIT NONE
      INTEGER, PARAMETER :: MAX_NODES = 100
      INTEGER root, i
      INTEGER test_keys(8)
      
      DATA test_keys /10, 20, 5, 6, 12, 30, 7, 17/

      ! Initialize the common block
      DO i = 1, MAX_NODES
         is_leaf(i) = 0
         count(i) = 0
      END DO

      root = CREATE_NODE(1)  ! Create the root node

      DO i = 1, 8
         CALL INSERT(root, test_keys(i))
      END DO

      WRITE(*,*) 'A-B Tree:'
      CALL PRINT_TREE(root)

      END PROGRAM MAIN
