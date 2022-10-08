-- Find customers who bought product A but never bought product B
CREATE TABLE prod_a (
  c_id INT
);

CREATE TABLE prod_b (
  c_id INT
);

INSERT INTO prod_a VALUES (10), (20), (30);
INSERT INTO prod_b VALUES (20), (40);

SELECT c_id FROM prod_a
EXCEPT
SELECT c_id FROM prod_b;
