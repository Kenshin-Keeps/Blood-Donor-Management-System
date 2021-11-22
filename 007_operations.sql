-- Various operations goes here
-- Selecting distinct gender
SELECT DISTINCT(gender) AS DISTINCT_GENDER FROM USERDATA;

SELECT status AS Status_Unavailable FROM DONOR WHERE status LIKE 'un%';
-- Selecting  user informatoin based on age => 20 and age <= 25
SELECT userFName, userLName, phoneNo, gender FROM USERDATA WHERE age BETWEEN 20 AND 25;
-- Selecting  user informatoin based on age < 20 and age > 25
SELECT userFName, userLName, phoneNo, gender FROM USERDATA WHERE age NOT BETWEEN 20 AND 25;

-- Selecting donor information in ascending and descing order
SELECT userId, bloodGroup FROM DONOR ORDER BY donorId ASC;
SELECT userId, bloodGroup FROM DONOR ORDER BY donorId DESC;

-- Select userId, Blood group and Address of the donor who are aged between 20-25 
SELECT userId, bloodGroup, donorAddress FROM DONOR WHERE userId IN(
    SELECT userId FROM USERDATA WHERE age BETWEEN 20 AND 25
);

-- Select userId, Blood group and Address of the donor who are aged between 20-25 using aliasing
SELECT d.userId, d.bloodGroup, d.donorAddress FROM DONOR d WHERE d.userId IN(
    SELECT u.userId FROM USERDATA u WHERE u.age>19 OR u.age<26
);

-- Selecting the count of donors of each blood group
SELECT COUNT(donorId), bloodGroup FROM DONOR GROUP BY bloodGroup;

-- Selecting the count of donors of only 'B+' blood group
SELECT COUNT(donorId), bloodGroup FROM DONOR GROUP BY bloodGroup HAVING bloodGroup='B+';









