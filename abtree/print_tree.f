C     Print tree function (non-recursive version)
      SUBROUTINE PRINT_TREE(root)
      INTEGER, PARAMETER :: M = 2
      INTEGER, PARAMETER :: MAX_NODES = 100
      INTEGER keys(M, MAX_NODES)
      INTEGER children(M+1, MAX_NODES)
      INTEGER count(MAX_NODES)
      INTEGER is_leaf(MAX_NODES)
      COMMON /AB_NODE/ keys, children, count, is_leaf
      INTEGER root
      INTEGER stack(MAX_NODES), top, current, i

      ! ... (rest of the PRINT_TREE subroutine)

      END SUBROUTINE PRINT_TREE
