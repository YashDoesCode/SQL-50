-- Compare each day revenue against the previous day and next day
CREATE TABLE rev (
  dt TEXT,
  amt INT
);

INSERT INTO rev VALUES
('2022-05-01', 400),
('2022-05-02', 550),
('2022-05-03', 500),
('2022-05-04', 700);

SELECT dt, amt,
  LAG(amt, 1) OVER (ORDER BY dt) AS prev_amt,
  LEAD(amt, 1) OVER (ORDER BY dt) AS next_amt
FROM rev;
