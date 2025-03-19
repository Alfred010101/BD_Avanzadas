SHOW DATABASES;
USE company;
SHOW TABLES;

SELECT * 
FROM employee 
WHERE address LIKE '%Houston%';

ALTER TABLE employee 
	ADD COLUMN estado_civil VARCHAR(10);

UPDATE employee 
SET estado_civil = 
	CASE
		WHEN sex = 'M' THEN 'casado'
        WHEN sex = 'F' THEN 'casada'
        ELSE 'np'
	END;
    
SELECT *, DATEDIFF(CURDATE(), d_base)  AS dias_v 
FROM employee;

SELECT e.f_name AS empleado, d.dependent_name AS dependiente
FROM employee e 
JOIN dependent d ON d.essn = e.super_ssn;

SET SQL_SAFE_UPDATES = 1;