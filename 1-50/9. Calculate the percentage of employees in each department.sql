--* Question 9: Calculate the percentage of employees in each department as a pivoted summary.

SELECT 
ROUND((COUNT(CASE WHEN department='HR' THEN 1  END )/COUNT(*))*100.0,1) HR,
ROUND((COUNT(CASE WHEN department='Marketing' THEN 1  END )/COUNT(*))*100.0,1) as Marketing,
ROUND((COUNT(CASE WHEN department='Executive' THEN 1  END )/COUNT(*))*100.0,1) as Executive,
ROUND((COUNT(CASE WHEN department='Technology' THEN 1  END )/COUNT(*))*100.0,1) as Tech,
ROUND((COUNT(CASE WHEN department='Operations' THEN 1  END )/COUNT(*))*100.0,1) as Operations,
ROUND((COUNT(CASE WHEN department='Finance' THEN 1  END )/COUNT(*))*100.0,1) as Finance
from employees;
