-- Filter joined rows in ON clause versus preserving all left rows
CREATE TABLE cust (
  id INT,
  n TEXT
);

CREATE TABLE ord (
  id INT,
  c_id INT,
  yr INT,
  amt INT
);

INSERT INTO cust VALUES (1, 'Alice'), (2, 'Bob');
INSERT INTO ord VALUES (10, 1, 2021, 50), (11, 1, 2022, 150), (12, 2, 2021, 80);

SELECT c.n, o.amt FROM cust c LEFT JOIN ord o ON c.id = o.c_id AND o.yr = 2022;
