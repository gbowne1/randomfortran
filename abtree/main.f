PROGRAM MAIN
    USE ab_tree_module
    IMPLICIT NONE
    INTEGER, PARAMETER :: M = 2
    INTEGER, PARAMETER :: MAX_NODES = 100
    INTEGER keys(M, MAX_NODES)
    INTEGER children(M+1, MAX_NODES)
    INTEGER count(MAX_NODES)
    INTEGER is_leaf(MAX_NODES)
    COMMON /AB_NODE/ keys, children, count, is_leaf
    INTEGER root, i, result
    INTEGER test_keys(8)
    DATA test_keys /10, 20, 5, 6, 12, 30, 7, 17/
 
    root = create_node(1)
 
    DO 60 i = 1, 8
       CALL INSERT(root, test_keys(i))
 60 CONTINUE
 
    WRITE(*,*) 'A-B Tree:'
    CALL print_tree(root)
 
    END PROGRAM MAIN
 