-- Generate all combinations of product sizes and colors
CREATE TABLE sz (
  s TEXT
);

CREATE TABLE col (
  c TEXT
);

INSERT INTO sz VALUES ('S'), ('M'), ('L');
INSERT INTO col VALUES ('Red'), ('Blue');

SELECT s.s, c.c FROM sz s CROSS JOIN col c;
