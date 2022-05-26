-- Compute summary metrics with descriptive aliases
CREATE TABLE sal (
  id INT,
  amt INT
);

INSERT INTO sal VALUES
(1, 4000),
(2, 5500),
(3, 7200);

SELECT COUNT(*) AS n_emp, SUM(amt) AS payroll_tot, AVG(amt) AS payroll_avg FROM sal;
