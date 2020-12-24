-- https://www.hackerrank.com/challenges/the-pads/problem
-- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession
-- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order

SELECT 
    CONCAT(
        Name, 
        CASE WHEN Occupation='Doctor' THEN '(D)'
             WHEN Occupation='Professor' THEN '(P)'
             WHEN Occupation='Singer' THEN '(S)'
             WHEN Occupation='Actor' THEN '(A)'
        END
    )
FROM OCCUPATIONS 
ORDER BY Name

SELECT 
    CONCAT("There are a total of ", COUNT(Occupation), " ", LOWER(Occupation), "s.")  
FROM OCCUPATIONS 
GROUP BY Occupation 
ORDER BY COUNT(Occupation) 
