-- Count total rows and total employees with an assigned commission
CREATE TABLE emp (
  id INT,
  n TEXT,
  comm INT
);

INSERT INTO emp VALUES
(1, 'Alice', 500),
(2, 'Bob', NULL),
(3, 'Charlie', 300),
(4, 'Dave', NULL);

SELECT COUNT(*) AS total_cnt, COUNT(comm) AS comm_cnt FROM emp;
