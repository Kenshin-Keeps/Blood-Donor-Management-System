-- -- Various operations goes here
-- -- Selecting distinct gender
-- SELECT DISTINCT(gender) AS DISTINCT_GENDER FROM USERDATA;

-- SELECT userId AS Who_are_unavailable FROM DONOR WHERE status LIKE 'un%';
-- -- Selecting  user informatoin based on age => 20 and age <= 25
-- SELECT userFName, userLName, phoneNo, gender FROM USERDATA WHERE age BETWEEN 20 AND 25;
-- -- Selecting  user informatoin based on age < 20 and age > 25
-- SELECT userFName, userLName, phoneNo, gender FROM USERDATA WHERE age NOT BETWEEN 20 AND 25;

-- -- Selecting donor information in ascending and descing order
-- SELECT userId, bloodGroup FROM DONOR ORDER BY donorId ASC;
-- SELECT userId, bloodGroup FROM DONOR ORDER BY donorId DESC;

-- -- Select userId, Blood group and Address of the donor who are aged between 20-25 
-- SELECT userId, bloodGroup, donorAddress FROM DONOR WHERE userId IN(
--     SELECT userId FROM USERDATA WHERE age BETWEEN 20 AND 25
-- );

-- -- Select userId, Blood group and Address of the donor who are aged between 20-25 using aliasing
-- SELECT d.userId, d.bloodGroup, d.donorAddress FROM DONOR d WHERE d.userId IN(
--     SELECT u.userId FROM USERDATA u WHERE u.age>19 OR u.age<26
-- );

-- -- Selecting the count of donors of each blood group
-- SELECT COUNT(donorId), bloodGroup FROM DONOR GROUP BY bloodGroup;

-- -- Selecting the count of donors of only 'B+' blood group
-- SELECT COUNT(donorId), bloodGroup FROM DONOR GROUP BY bloodGroup HAVING bloodGroup='B+';

-- -- User of aggregate function
-- SELECT COUNT(quantity), SUM(quantity), AVG(quantity), MAX(quantity), MIN(quantity) FROM REQUEST;

-- -- "UNION ALL" example, Merging results of two Queries
-- SELECT userId, userFName, userLName FROM USERDATA
-- WHERE age BETWEEN 20 AND 25 
-- UNION ALL
-- SELECT userId, userFName, userLName FROM USERDATA
-- WHERE userId IN (SELECT userId FROM DONOR
-- WHERE bloodGroup='B+');

-- -- "UNION" example, Merging results of two Queries
-- SELECT userId, userFName, userLName FROM USERDATA WHERE age BETWEEN 20 AND 25 
-- UNION
-- SELECT userId, userFName, userLName FROM USERDATA WHERE userId IN 
-- (SELECT userId FROM DONOR
-- WHERE bloodGroup='B+');

-- -- "INTERSECT" example, Merging results of two Queries
-- SELECT userId, userFName, userLName FROM USERDATA WHERE age BETWEEN 20 AND 25 
-- INTERSECT
-- SELECT userId, userFName, userLName FROM USERDATA WHERE userId IN 
-- (SELECT userId FROM DONOR
-- WHERE bloodGroup='B+');

-- -- "MINUS" example, Merging results of two Queries
-- SELECT userId, userFName, userLName FROM USERDATA WHERE age BETWEEN 20 AND 25 
-- MINUS
-- SELECT userId, userFName, userLName FROM USERDATA WHERE userId IN 
-- (SELECT userId FROM DONOR
-- WHERE bloodGroup='B+');

-- -- Selecting user details of the users who are doners those requested for blood
-- SELECT DISTINCT u.userId, u.userFName, u.userLName, d.bloodGroup, d.status AS NEWDATA 
-- FROM USERDATA u, DONOR d, REQUEST r WHERE u.userId = d.userId AND u.userId = r.userId;

-- -- Selecting information of users and their request with JOIN operation
-- SELECT u.userFName, u.userLName, r.requestedGroup, r.reason, r.quantity
-- FROM USERDATA u JOIN REQUEST r ON u.userId = r.userId;

-- -- Selecting information of users and their request with USING operation
-- SELECT u.userFName, u.userLName, r.requestedGroup, r.reason, r.quantity
-- FROM USERDATA u JOIN REQUEST r USING(userId);

-- -- Selecting information of users and their request with NATURAL JOIN operation
-- SELECT userId, u.userFName, r.requestedGroup, r.reason, r.quantity
-- FROM USERDATA u NATURAL JOIN REQUEST r;

-- -- Example of INNER JOIN which is same as join
-- SELECT u.userFName, u.userLName, r.requestedGroup, r.reason, r.quantity
-- FROM USERDATA u INNER JOIN REQUEST r ON u.userId = r.userId;

-- -- Selecting information of users and their request based on LEFT OUTER JOIN
-- SELECT u.userFName, u.userLName, r.requestedGroup, r.reason 
-- FROM USERDATA u LEFT OUTER JOIN REQUEST r 
-- ON u.userId = r.userId;

-- -- Selecting information of donors and their requests based on RIGHT OUTER JOIN
-- SELECT d.donorId, d.donorAddress, r.requestedGroup, r.contactNo
-- FROM DONOR d RIGHT OUTER JOIN REQUEST r
-- ON d.userId = r.userId; 

-- -- Selecting information of donors and their requests based on FULL OUTER JOIN
-- SELECT d.donorId, d.donorAddress, r.requestedGroup, r.contactNo
-- FROM DONOR d FULL OUTER JOIN REQUEST r
-- ON d.userId = r.userId; 



