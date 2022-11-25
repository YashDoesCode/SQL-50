-- Identify contiguous date islands for user activity logs
CREATE TABLE log (
  u_id INT,
  dt DATE
);

INSERT INTO log VALUES
(1, '2022-03-01'),
(1, '2022-03-02'),
(1, '2022-03-03'),
(1, '2022-03-06'),
(1, '2022-03-07');

WITH grpd AS (
  SELECT u_id, dt,
    DATE(dt, '-' || ROW_NUMBER() OVER (PARTITION BY u_id ORDER BY dt) || ' days') AS grp
  FROM log
)
SELECT u_id, MIN(dt) AS st_dt, MAX(dt) AS end_dt, COUNT(*) AS len
FROM grpd
GROUP BY u_id, grp
ORDER BY st_dt;
