-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem
-- You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
-- Write a query to find the node type of Binary Tree: root, leaf, inner

SELECT 
    N, 
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT DISTINCT P FROM BST) THEN 'Inner'
        ELSE "Leaf"
    END
FROM BST
ORDER BY N
