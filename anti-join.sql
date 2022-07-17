-- Find customers who have never placed an order
CREATE TABLE cust (
  id INT,
  n TEXT
);

CREATE TABLE ord (
  id INT,
  c_id INT
);

INSERT INTO cust VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Charlie');
INSERT INTO ord VALUES (10, 1), (11, 1);

SELECT c.id, c.n FROM cust c LEFT JOIN ord o ON c.id = o.c_id WHERE o.id IS NULL;
