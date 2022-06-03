-- Calculate average item price rounded to two decimal places
CREATE TABLE item (
  id INT,
  cost REAL
);

INSERT INTO item VALUES
(1, 19.994),
(2, 12.459),
(3, 7.801);

SELECT ROUND(AVG(cost), 2) AS avg_cost FROM item;
