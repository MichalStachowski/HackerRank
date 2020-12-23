-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem

SELECT CASE WHEN A+B<=C OR A+C<=B OR B+C<=A THEN "Not A Triangle"
            WHEN A=B AND A=C THEN "Equilateral" 
            WHEN A=B OR A=C OR B=C THEN "Isosceles"
            WHEN A<>B AND A<>C AND B<>C THEN "Scalene"
            -- ELSE ""
            END AS TriangleType -- , *
FROM TRIANGLES
