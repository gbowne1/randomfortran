      SUBROUTINE PRINT_TREE(root)
      INTEGER root
      INTEGER stack(100), top, current, i

      top = 0
      current = root

      ! Non-recursive tree traversal
      DO WHILE (current .NE. -1)
         ! Push current node onto the stack
         stack(top) = current
         top = top + 1
         current = children(current, 1)  ! Go to the leftmost child
      END DO

      ! Print the nodes in a depth-first manner
      DO WHILE (top .GT. 0)
         top = top - 1
         current = stack(top)

         ! Print the current node
         CALL PRINT_CHILD(current)

         ! Now go to the next child
         i = 1
         WHILE (i <= count(current) + 1)
            current = children(current, i)
            IF (current .NE. -1) THEN
               stack(top) = current
               top = top + 1
               DO WHILE (current .NE. -1)
                  stack(top) = current
                  top = top + 1
                  current = children(current, 1)
               END DO
            END IF
            i = i + 1
         END WHILE
      END DO
      RETURN
      END SUBROUTINE PRINT_TREE
