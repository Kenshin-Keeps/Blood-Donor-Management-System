-- -- Various operations goes here
--     prompt Query operations starts here
--     prompt --------------------------------

-- -- Selecting distinct gender
--     prompt Selecting distinct gender
--     prompt --------------------------------

-- SELECT DISTINCT(gender) AS DISTINCT_GENDER FROM USERDATA;

--     prompt Selecting unavailable userids
--     prompt --------------------------------

-- SELECT userId AS Who_are_unavailable FROM DONOR WHERE status LIKE 'un%';

-- -- Selecting  user informatoin based on age => 20 and age <= 25
--     prompt Selecting  user informatoin based on age => 20 and age <= 25
--     prompt --------------------------------

-- SELECT userFName, userLName, phoneNo, gender FROM USERDATA WHERE age BETWEEN 20 AND 25;

-- -- Selecting  user informatoin based on age < 20 and age > 25
--     prompt Selecting  user informatoin based on age < 20 and age > 25
--     prompt --------------------------------

-- SELECT userFName, userLName, phoneNo, gender FROM USERDATA WHERE age NOT BETWEEN 20 AND 25;

-- -- Selecting donor information in ascending and descing order
--     prompt Selecting donor information in ascending and descing order
--     prompt --------------------------------

-- SELECT userId, bloodGroup FROM DONOR ORDER BY donorId ASC;
-- SELECT userId, bloodGroup FROM DONOR ORDER BY donorId DESC;

-- -- Select userId, Blood group and Address of the donor who are aged between 20-25
--     prompt Select userId, Blood group and Address of the donor who are aged between 20-25
--     prompt --------------------------------

-- SELECT userId, bloodGroup, donorAddress FROM DONOR WHERE userId IN(
--     SELECT userId FROM USERDATA WHERE age BETWEEN 20 AND 25
-- );

-- -- Select userId, Blood group and Address of the donor who are aged between 20-25 using aliasing
--     prompt Select userId, Blood group and Address of the donor who are aged between 20-25 using aliasing
--     prompt --------------------------------

-- SELECT d.userId, d.bloodGroup, d.donorAddress FROM DONOR d WHERE d.userId IN(
--     SELECT u.userId FROM USERDATA u WHERE u.age>19 OR u.age<26
-- );

-- -- Selecting the count of donors of each blood group
--     prompt Selecting the count of donors of each blood group
--     prompt --------------------------------

-- SELECT COUNT(donorId), bloodGroup FROM DONOR GROUP BY bloodGroup;

-- -- Selecting the count of donors of only 'B+' blood group
--     prompt Selecting the count of donors of only 'B+' blood group
--     prompt --------------------------------

-- SELECT COUNT(donorId), bloodGroup FROM DONOR GROUP BY bloodGroup HAVING bloodGroup='B+';

-- -- Use of aggregate functions
--     prompt Use of aggregate functions
--     prompt --------------------------------

-- SELECT COUNT(quantity), SUM(quantity), AVG(quantity), MAX(quantity), MIN(quantity) FROM REQUEST;

-- -- "UNION ALL" example, Merging results of two Queries
--     prompt "UNION ALL" example, Merging results of two Queries
--     prompt --------------------------------

-- SELECT userId, userFName, userLName FROM USERDATA
-- WHERE age BETWEEN 20 AND 25 
-- UNION ALL
-- SELECT userId, userFName, userLName FROM USERDATA
-- WHERE userId IN (SELECT userId FROM DONOR
-- WHERE bloodGroup='B+');

-- -- "UNION" example, Merging results of two Queries
--     prompt "UNION" example, Merging results of two Queries
--     prompt --------------------------------

-- SELECT userId, userFName, userLName FROM USERDATA WHERE age BETWEEN 20 AND 25 
-- UNION
-- SELECT userId, userFName, userLName FROM USERDATA WHERE userId IN 
-- (SELECT userId FROM DONOR
-- WHERE bloodGroup='B+');

-- -- "INTERSECT" example, Merging results of two Queries
--     prompt "INTERSECT" example, Merging results of two Queries
--     prompt --------------------------------

-- SELECT userId, userFName, userLName FROM USERDATA WHERE age BETWEEN 20 AND 25 
-- INTERSECT
-- SELECT userId, userFName, userLName FROM USERDATA WHERE userId IN 
-- (SELECT userId FROM DONOR
-- WHERE bloodGroup='B+');

-- -- "MINUS" example, Merging results of two Queries
--     prompt "MINUS" example, Merging results of two Queries
--     prompt --------------------------------

-- SELECT userId, userFName, userLName FROM USERDATA WHERE age BETWEEN 20 AND 25 
-- MINUS
-- SELECT userId, userFName, userLName FROM USERDATA WHERE userId IN 
-- (SELECT userId FROM DONOR
-- WHERE bloodGroup='B+');

-- -- Selecting user details of the users who are doners those requested for blood
--     prompt Selecting user details of the users who are doners those requested for blood
--     prompt --------------------------------

-- SELECT DISTINCT u.userId, u.userFName, u.userLName, d.bloodGroup, d.status AS NEWDATA 
-- FROM USERDATA u, DONOR d, REQUEST r WHERE u.userId = d.userId AND u.userId = r.userId;

-- -- Selecting information of users and their request with JOIN operation
--     prompt Selecting information of users and their request with JOIN operation
--     prompt --------------------------------

-- SELECT u.userFName, u.userLName, r.requestedGroup, r.reason, r.quantity
-- FROM USERDATA u JOIN REQUEST r ON u.userId = r.userId;

-- -- Selecting information of users and their request with USING operation
--     prompt Selecting information of users and their request with USING operation
--     prompt --------------------------------

-- SELECT u.userFName, u.userLName, r.requestedGroup, r.reason, r.quantity
-- FROM USERDATA u JOIN REQUEST r USING(userId);

-- -- Selecting information of users and their request with NATURAL JOIN operation
--     prompt Selecting information of users and their request with NATURAL JOIN operation
--     prompt --------------------------------

-- SELECT userId, u.userFName, r.requestedGroup, r.reason, r.quantity
-- FROM USERDATA u NATURAL JOIN REQUEST r;

-- -- Example of INNER JOIN which is same as join
--     prompt Example of INNER JOIN which is same as join
--     prompt --------------------------------

-- SELECT u.userFName, u.userLName, r.requestedGroup, r.reason, r.quantity
-- FROM USERDATA u INNER JOIN REQUEST r ON u.userId = r.userId;

-- -- Selecting information of users and their request based on LEFT OUTER JOIN
--     prompt Selecting information of users and their request based on LEFT OUTER JOIN
--     prompt --------------------------------

-- SELECT u.userFName, u.userLName, r.requestedGroup, r.reason 
-- FROM USERDATA u LEFT OUTER JOIN REQUEST r 
-- ON u.userId = r.userId;

-- -- Selecting information of donors and their requests based on RIGHT OUTER JOIN
--     prompt Selecting information of donors and their requests based on RIGHT OUTER JOIN
--     prompt --------------------------------

-- SELECT d.donorId, d.donorAddress, r.requestedGroup, r.contactNo
-- FROM DONOR d RIGHT OUTER JOIN REQUEST r
-- ON d.userId = r.userId; 

-- -- Selecting information of donors and their requests based on FULL OUTER JOIN
--     prompt Selecting information of donors and their requests based on FULL OUTER JOIN
--     prompt --------------------------------

-- SELECT d.donorId, d.donorAddress, r.requestedGroup, r.contactNo
-- FROM DONOR d FULL OUTER JOIN REQUEST r
-- ON d.userId = r.userId; 

-- ---------------------------PL/SQL----------------------------
-- prompt PL/SQL queries started from here
-- prompt --------------------------------

-- prompt finding maximum age among the users
-- prompt --------------------------------

-- SET SERVEROUTPUT ON
-- DECLARE
--     max_age     USERDATA.age%type;
-- begin
--     select MAX(age) into max_age from USERDATA;
--     DBMS_OUTPUT.PUT_LINE('Maximum age of an user is '|| max_age);
-- end;
-- /

-- prompt checking a phone number
-- prompt --------------------------------

-- SET SERVEROUTPUT ON
-- DECLARE
--     fname USERDATA.userFName%type;
--     lname USERDATA.userLName%type;
--     candidatePhoneNo USERDATA.phoneNo%type := '01712344567';
-- begin
--     select userFName, userLName into fname, lname from USERDATA
--     where phoneNo = candidatePhoneNo;
--     DBMS_OUTPUT.PUT_LINE('The phone no. belongs to '|| fname ||' '|| lname);
-- end;
-- /

-- prompt checking the availability level of the requested blood group
-- prompt --------------------------------

-- SET SERVEROUTPUT ON
-- DECLARE
--     fname USERDATA.userFName%type;
--     lname USERDATA.userLName%type;
--     bgroup REQUEST.requestedGroup%type;
--     id REQUEST.userId%type;
--     candidateReason REQUEST.reason%type := 'Brain Surgery';
--     a_pos REQUEST.requestedGroup%type :='A+';
--     o_pos REQUEST.requestedGroup%type :='O+';
--     b_pos REQUEST.requestedGroup%type :='B+';
--     ab_pos REQUEST.requestedGroup%type :='AB+';
--     o_neg REQUEST.requestedGroup%type :='O-';
--     a_neg REQUEST.requestedGroup%type :='A-';
-- begin
--     select userId, requestedGroup into id, bgroup from REQUEST
--     where reason = candidateReason;
--     select userFName, userLName into fname, lname from USERDATA
--     where userId = id;
--     if bgroup = a_pos OR bgroup = o_pos OR bgroup = b_pos then
--         DBMS_OUTPUT.PUT_LINE(fname ||' '|| lname||' requested for a common blood grooup '||bgroup);
--     elsif bgroup = ab_pos OR bgroup = o_neg OR bgroup = a_neg then
--         DBMS_OUTPUT.PUT_LINE(fname ||' '|| lname||' requested for a medium rare blood grooup '||bgroup);
--     else
--         DBMS_OUTPUT.PUT_LINE(fname ||' '|| lname||' requested for a rare blood grooup '||bgroup);
--     end if;
-- end;
-- /








