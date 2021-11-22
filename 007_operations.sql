-- Various operations goes here

-- Selecting distinct gender
SELECT DISTINCT(gender) AS DISTINCT_GENDER FROM USERDATA;
-- Selecting  user informatoin based on age => 20 and age <= 25
SELECT userFName, userLName, phoneNo, gender FROM USERDATA WHERE age BETWEEN 20 AND 25;
-- Selecting  user informatoin based on age < 20 and age > 25
SELECT userFName, userLName, phoneNo, gender FROM USERDATA WHERE age NOT BETWEEN 20 AND 25;

-- Selecting donor information in ascending and descing order
SELECT userId, bloodGroup FROM DONOR ORDER BY donorId ASC;
SELECT userId, bloodGroup FROM DONOR ORDER BY donorId DESC;





