C     Create node function
      INTEGER FUNCTION CREATE_NODE(leaf)
      INTEGER, PARAMETER :: M = 2
      INTEGER, PARAMETER :: MAX_NODES = 100
      INTEGER keys(M, MAX_NODES)
      INTEGER children(M+1, MAX_NODES)
      INTEGER count(MAX_NODES)
      INTEGER is_leaf(MAX_NODES)
      COMMON /AB_NODE/ keys, children, count, is_leaf
      INTEGER leaf
      INTEGER i, new_node

      ! ... (rest of the CREATE_NODE function)

      END FUNCTION CREATE_NODE
