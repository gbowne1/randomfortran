C     Common block for node data (shared across subroutines)
      INTEGER keys(2, 100)            ! Array to store keys in each node
      INTEGER children(3, 100)      ! Array to store child pointers
      INTEGER count(100)              ! Array to store number of keys in each node
      INTEGER is_leaf(100)            ! Array to indicate if a node is a leaf (1) or not (0)

C     Module definition
      MODULE AB_TREE_MODULE
         PRIVATE
         PUBLIC :: keys, children, count, is_leaf
      END MODULE AB_TREE_MODULE
