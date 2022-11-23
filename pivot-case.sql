-- Pivot monthly department expenses into Q1 month columns
CREATE TABLE exp (
  dept TEXT,
  mth INT,
  amt INT
);

INSERT INTO exp VALUES
('Eng', 1, 5000),
('Eng', 2, 6000),
('Eng', 3, 5500),
('Sales', 1, 3000),
('Sales', 2, 3200),
('Sales', 3, 4000);

SELECT dept,
  SUM(CASE WHEN mth = 1 THEN amt ELSE 0 END) AS m1,
  SUM(CASE WHEN mth = 2 THEN amt ELSE 0 END) AS m2,
  SUM(CASE WHEN mth = 3 THEN amt ELSE 0 END) AS m3
FROM exp
GROUP BY dept;
