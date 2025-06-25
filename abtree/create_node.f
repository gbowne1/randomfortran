      INTEGER FUNCTION CREATE_NODE(leaf)
      INTEGER, PARAMETER :: MAX_NODES = 100
      INTEGER leaf
      INTEGER new_node

      DO 10 new_node = 1, MAX_NODES
         IF (is_leaf(new_node) .EQ. 0) THEN
            is_leaf(new_node) = leaf
            count(new_node) = 0
            CREATE_NODE = new_node
            RETURN
         END IF
10    CONTINUE
      CREATE_NODE = -1  ! Return -1 if no free node is available
      RETURN
      END FUNCTION CREATE_NODE
