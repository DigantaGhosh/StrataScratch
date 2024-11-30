--You have been asked to find the three lowest distinct salaries. For example, if two people earn the same amount of money, they are counted as one.

SELECT DISTINCT salary
FROM worker
ORDER BY salary DESC
LIMIT 3;
