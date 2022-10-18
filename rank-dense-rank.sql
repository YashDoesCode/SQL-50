-- Compare RANK and DENSE_RANK on employees with tied sales scores
CREATE TABLE score (
  n TEXT,
  pts INT
);

INSERT INTO score VALUES
('Alice', 100),
('Bob', 90),
('Charlie', 90),
('Dave', 80);

SELECT n, pts,
  RANK() OVER (ORDER BY pts DESC) AS rnk,
  DENSE_RANK() OVER (ORDER BY pts DESC) AS drnk
FROM score;
