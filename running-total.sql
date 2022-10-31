-- Calculate a cumulative running balance of transaction amounts over time
CREATE TABLE txn (
  id INT,
  dt TEXT,
  amt INT
);

INSERT INTO txn VALUES
(1, '2022-01-01', 100),
(2, '2022-01-02', 250),
(3, '2022-01-03', -50),
(4, '2022-01-04', 300);

SELECT id, dt, amt,
  SUM(amt) OVER (ORDER BY dt, id ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS bal
FROM txn;
