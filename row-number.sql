-- Assign sequential row numbers ordered by hire date per department
CREATE TABLE emp (
  id INT,
  n TEXT,
  dept TEXT,
  h_dt TEXT
);

INSERT INTO emp VALUES
(1, 'Alice', 'Eng', '2021-01-15'),
(2, 'Bob', 'Eng', '2020-06-10'),
(3, 'Charlie', 'Sales', '2021-03-01'),
(4, 'Dave', 'Sales', '2019-11-20');

SELECT n, dept, h_dt,
  ROW_NUMBER() OVER (PARTITION BY dept ORDER BY h_dt ASC) AS rn
FROM emp;
