-- Analyze query execution plan with an index on filtered and sorted columns
CREATE TABLE evt (
  id INT,
  u_id INT,
  ts TEXT,
  val INT
);

CREATE INDEX idx_evt_user_ts ON evt(u_id, ts);

INSERT INTO evt VALUES
(1, 10, '2022-01-01 10:00:00', 5),
(2, 10, '2022-01-02 11:00:00', 8),
(3, 20, '2022-01-01 09:00:00', 3);

EXPLAIN QUERY PLAN
SELECT ts, val FROM evt WHERE u_id = 10 ORDER BY ts DESC;
