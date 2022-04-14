-- Calculate total revenue and average order amount
CREATE TABLE ord (
  id INT,
  amt INT
);

INSERT INTO ord VALUES
(1, 100),
(2, 250),
(3, 150),
(4, 300);

SELECT SUM(amt) AS tot, AVG(amt) AS avg_amt FROM ord;
