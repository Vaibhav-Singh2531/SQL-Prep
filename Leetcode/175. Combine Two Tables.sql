SELECT p.firstName, p.lastName, a.city, a.state 
FROM Person As p 
Left JOIN Address AS a 
ON p.personId = a.personId