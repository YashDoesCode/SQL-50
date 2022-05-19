-- Count distinct customer accounts that placed orders in each region
CREATE TABLE ord (
  id INT,
  c_id INT,
  reg TEXT
);

INSERT INTO ord VALUES
(1, 101, 'North'),
(2, 101, 'North'),
(3, 102, 'North'),
(4, 201, 'South');

SELECT reg, COUNT(DISTINCT c_id) AS uniq_c FROM ord GROUP BY reg;
