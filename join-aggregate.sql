-- Calculate total sales amount per customer including customers with zero sales
CREATE TABLE cust (
  id INT,
  n TEXT
);

CREATE TABLE ord (
  id INT,
  c_id INT,
  amt INT
);

INSERT INTO cust VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Charlie');
INSERT INTO ord VALUES (10, 1, 250), (11, 1, 150), (12, 2, 300);

SELECT c.n, COALESCE(SUM(o.amt), 0) AS tot FROM cust c LEFT JOIN ord o ON c.id = o.c_id GROUP BY c.id, c.n;
