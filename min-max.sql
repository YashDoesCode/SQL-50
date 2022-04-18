-- Find lowest and highest product prices
CREATE TABLE prod (
  id INT,
  p INT
);

INSERT INTO prod VALUES
(1, 15),
(2, 45),
(3, 5),
(4, 85);

SELECT MIN(p) AS min_p, MAX(p) AS max_p FROM prod;
