      SUBROUTINE PRINT_CHILD(node)
      INTEGER node
      INTEGER i

      WRITE(*,*) 'Node ', node, ':'
      WRITE(*,*) 'Keys: ',
      DO i = 1, count(node)
         WRITE(*,*) keys(node, i),
      END DO
      WRITE(*,*) 'Children: ',
      DO i = 1, count(node) + 1
         WRITE(*,*) children(node, i),
      END DO
      WRITE(*,*) 'Is Leaf: ', is_leaf(node)
      RETURN
      END SUBROUTINE PRINT_CHILD
