-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem
-- Query the Manhattan Distance between points P1(a, b), P2(c, d)
-- MS SQL Server

DECLARE @a float;
DECLARE @b float;
DECLARE @c float;
DECLARE @d float;
DECLARE @result float;

SELECT @a = MIN(LAT_N) FROM STATION;
SELECT @b = MIN(LONG_W) FROM STATION;
SELECT @c = MAX(LAT_N) FROM STATION;
SELECT @d = MAX(LONG_W) FROM STATION;
SET @result = ABS(@a - @c) + ABS(@b - @d);
SELECT CAST(@result AS DECIMAL(10, 4));
