-- Calculate a 3-day moving average of daily active users
CREATE TABLE dau (
  d_id INT,
  cnt INT
);

INSERT INTO dau VALUES
(1, 100),
(2, 120),
(3, 110),
(4, 150),
(5, 140);

SELECT d_id, cnt,
  AVG(cnt) OVER (ORDER BY d_id ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS m_avg
FROM dau;
