-- 1
SELECT * FROM EMPLOYEE 
WHERE SALARY=(SELECT MAX(SALARY) FROM EMPLOYEE);

-- 2
SELECT * FROM DEPARTMENT
WHERE ID=(SELECT DEPARTMENT_ID 
  FROM EMPLOYEE 
  ORDER BY SALARY DESC 
  LIMIT 1);

-- 3
SELECT * FROM DEPARTMENT
WHERE ID=(
  SELECT DEPARTMENT_ID FROM (
    SELECT DEPARTMENT_ID, SUM(SALARY)AS SUMMARY FROM EMPLOYEE 
    GROUP BY DEPARTMENT_ID
    ORDER BY SUMMARY DESC
    LIMIT 1));

-- 4
SELECT * FROM EMPLOYEE WHERE NAME LIKE 'Р%н';
