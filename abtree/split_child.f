      SUBROUTINE SPLIT_CHILD(parent, i)
      INTEGER parent, i
      INTEGER new_node, j, k

      new_node = CREATE_NODE(1)
      IF (new_node .EQ. -1) RETURN  ! Handle error if no node is available

      ! Move the last M/2 keys to the new node
      count(new_node) = 1  ! Assuming M = 2 for simplicity
      keys(new_node, 1) = keys(parent, 2)

      ! Adjust the child pointers
      IF (parent .EQ. 0) THEN
         children(parent, 2) = new_node
      ELSE
         DO k = count(parent), i, -1
            children(parent, k + 1) = children(parent, k)
         END DO
         children(parent, i + 1) = new_node
      END IF

      count(parent) = count(parent) - 1
      count(parent) = count(parent) + 1
      keys(parent, i) = keys(parent, 1)
      RETURN
      END SUBROUTINE SPLIT_CHILD
