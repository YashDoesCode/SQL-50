-- Aggregate order totals by customer and year
CREATE TABLE ord (
  id INT,
  c_id INT,
  yr INT,
  amt INT
);

INSERT INTO ord VALUES
(1, 10, 2021, 200),
(2, 10, 2021, 150),
(3, 10, 2022, 300),
(4, 20, 2022, 400);

SELECT c_id, yr, SUM(amt) AS tot FROM ord GROUP BY c_id, yr;
