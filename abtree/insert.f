      SUBROUTINE INSERT(root, key)
      INTEGER root, key
      INTEGER current, parent, i, j
      INTEGER new_node
      LOGICAL split_flag

      current = root
      parent = -1
      split_flag = .FALSE.

      ! Traverse the tree to find the correct leaf node
      DO WHILE (current .NE. -1)
         parent = current
         i = 1
         WHILE (i <= count(current) .AND. key > keys(current, i))
            i = i + 1
         END WHILE

         current = children(parent, i)
      END DO

      ! Insert the key into the leaf node
      IF (count(parent) < 2) THEN
         ! Insert key in sorted order
         DO j = count(parent), i, -1
            keys(parent, j + 1) = keys(parent, j)
         END DO
         keys(parent, i) = key
         count(parent) = count(parent) + 1
      ELSE
         ! Split the node
         CALL SPLIT_CHILD(parent, i)
         IF (key > keys(parent, i)) THEN
            current = children(parent, i + 1)
         ELSE
            current = children(parent, i)
         END IF
         CALL INSERT(current, key)
      END IF
      END SUBROUTINE INSERT
