WITH freq_map AS (
    SELECT num, COUNT(num) count FROM MyNumbers GROUP BY num
) 

SELECT MAX(num) num FROM freq_map WHERE count = 1