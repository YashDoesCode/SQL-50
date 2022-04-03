-- Filter orders placed within amount range and belonging to specific statuses
CREATE TABLE ord (
  id INT,
  amt INT,
  st TEXT
);

INSERT INTO ord VALUES
(1, 150, 'paid'),
(2, 250, 'pending'),
(3, 450, 'paid'),
(4, 50, 'cancelled'),
(5, 300, 'shipped');

SELECT * FROM ord WHERE amt BETWEEN 100 AND 400 AND st IN ('paid', 'shipped');
