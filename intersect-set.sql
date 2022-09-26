-- Find employee IDs that have completed both safety and technical certifications
CREATE TABLE cert_safe (
  e_id INT
);

CREATE TABLE cert_tech (
  e_id INT
);

INSERT INTO cert_safe VALUES (1), (2), (3);
INSERT INTO cert_tech VALUES (2), (3), (4);

SELECT e_id FROM cert_safe
INTERSECT
SELECT e_id FROM cert_tech;
