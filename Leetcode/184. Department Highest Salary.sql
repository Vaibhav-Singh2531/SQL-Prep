WITH high_salary AS (
    SELECT departmentId, MAX(salary) max_salary FROM Employee GROUP BY departmentId
)

SELECT d.name Department, e.name Employee, e.salary Salary FROM Employee e JOIN Department d 
ON e.departmentId = d.id
JOIN high_salary h ON e.departmentId = h.departmentId
WHERE e.salary >= h.max_salary