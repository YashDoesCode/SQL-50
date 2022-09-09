-- Categorize employee compensation into low, mid, and high bands
CREATE TABLE emp (
  id INT,
  n TEXT,
  sal INT
);

INSERT INTO emp VALUES
(1, 'Alice', 35000),
(2, 'Bob', 65000),
(3, 'Charlie', 110000);

SELECT n, sal,
  CASE
    WHEN sal >= 90000 THEN 'High'
    WHEN sal >= 50000 THEN 'Mid'
    ELSE 'Low'
  END AS tier
FROM emp;
