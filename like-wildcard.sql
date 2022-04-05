-- Find products where code starts with PRO and ends with X
CREATE TABLE prod (
  id INT,
  code TEXT,
  p INT
);

INSERT INTO prod VALUES
(1, 'PRO-99-X', 100),
(2, 'PRE-99-X', 120),
(3, 'PRO-12-Y', 80),
(4, 'PRO-A1-X', 150);

SELECT code, p FROM prod WHERE code LIKE 'PRO%X';
