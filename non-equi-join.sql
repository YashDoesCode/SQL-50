-- Match employees to their salary grade bracket based on min and max bounds
CREATE TABLE emp (
  id INT,
  n TEXT,
  sal INT
);

CREATE TABLE grd (
  lvl TEXT,
  lo INT,
  hi INT
);

INSERT INTO emp VALUES (1, 'Alice', 35000), (2, 'Bob', 55000), (3, 'Charlie', 85000);
INSERT INTO grd VALUES ('Junior', 30000, 49999), ('Mid', 50000, 74999), ('Senior', 75000, 100000);

SELECT e.n, e.sal, g.lvl FROM emp e JOIN grd g ON e.sal BETWEEN g.lo AND g.hi;
