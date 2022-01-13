-- Deleting any previous row in any table
    prompt Deleting exsisting row in USERDATA, DONOR, REQUEST
    prompt --------------------------------

DELETE FROM REQUEST;
DELETE FROM DONOR;
DELETE FROM USERDATA;

    prompt Inserting data in USERDATA, DONOR, REQUEST table
    prompt --------------------------------

SET SERVEROUTPUT ON
BEGIN

-- Inserting data in USERDATA table
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707001, 'Shupta', 'Das', '01712344567', 'Female', 22);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707002, 'Mehrab', 'Hossain', '01712344568', 'Male', 23);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707003, 'Mahfuzul', 'Haque', '01712344570', 'Male', 25);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707004, 'Maruf', 'Hasan', '017123445145', 'Male', 27);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707005, 'Asnuva', 'Tanvin', '01712344512', 'Female', 21);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707006, 'Samin', 'Yeaser', '01712344556', 'Male', 24);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707007, 'Zahim', 'Hassan', '01736393334', 'Male', 20);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707008, 'Shamsul', 'Arefin', '01712344510', 'Male', 19);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707009, 'Alvi', 'Nabil', '01712344456', 'Male', 25);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707010, 'Sajidul', 'Islam', '01712344501', 'Male', 30);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707011, 'Shourin', 'Paul', '01712333501', 'Male', 25);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707012, 'Sazia', 'Rahman', '01712344601', 'Female', 28);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707013, 'Nafi', 'Razaque', '01712344701', 'Male', 32);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707014, 'Rakib', 'Hasan', '01712344801', 'Male', 35);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707015, 'Mahmudul', 'Hasan', '01712344901', 'Male', 38);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707016, 'Newaj', 'Shorif', '01712344001', 'Male', 40);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707017, 'Antika', 'Noor', '01712341501', 'Female', 23);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707018, 'Arna', 'Roy', '01712342501', 'Female', 24);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707019, 'Tahsin', 'Mahmud', '01712343501', 'Male', 25);
INSERT INTO USERDATA (userId, userFName, userLName, phoneNo, gender, age)
VALUES (1707020, 'Tamim', 'Hossain', '01712345501', 'Male', 27);

-- Inserting data in DONOR table
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1001, 1707001, 'O+', 'Munshiganj', 'available');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1002, 1707003, 'AB+', 'Khulna', 'available');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1003, 1707004, 'A+', 'Dhaka', 'unavailable');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1004, 1707005, 'B+', 'Dhaka', 'unavailable');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1005, 1707007, 'B+', 'Bogura', 'available');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1006, 1707008, 'AB-', 'Dhaka', 'unavailable');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1007, 1707009, 'A+', 'Barishal', 'unavailable');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1008, 1707010, 'B+', 'Chattogram', 'available');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1009, 1707011, 'B-', 'Dhaka', 'available');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1010, 1707012, 'A-', 'Bogura', 'unavailable');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1011, 1707014, 'B+', 'Dhaka', 'available');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1012, 1707016, 'O-', 'Panchagar', 'unavailable');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1013, 1707017, 'AB+', 'Barishal', 'unavailable');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1014, 1707018, 'B-', 'Dhaka', 'available');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, status)
VALUES (1015, 1707020, 'AB+', 'Chattogram', 'available');


-- Inserting data in REQUEST table
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (101, 1707002, 'A+', 2, 'Heart Operation', 'Dhaka', '21-DEC-21', '01743567890');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (102, 1707003, 'A-', 3, 'Brain Surgery', 'Khulna', '19-DEC-21', '01743567867');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (103, 1707003, 'AB+', 4, 'Cancer Treatment', 'Khulna', '19-DEC-21', '01743567877');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (104, 1707004, 'B+', 1, 'Thalasemia Patient', 'Dhaka', '28-DEC-21', '01743567896');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (105, 1707007, 'O+', 3, 'Cancer Treatment', 'Bogura', '16-DEC-21', '01743567894');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (106, 1707007, 'B-', 1, 'Childbirth', 'Rajshahi', '30-DEC-21', '01743567790');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (107, 1707007, 'AB-', 1, 'Open Heart Surgery', 'Bogura', '31-DEC-21', '01743567791');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (108, 1707009, 'O-', 2, 'Corona Patient', 'Barishal', '21-DEC-21', '01743567800');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (109, 1707009, 'B+', 2, 'Corona Patient', 'Khulna', '23-DEC-21', '01743567801');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (110, 1707009, 'A+', 2, 'Childbirth', 'Dhaka', '25-DEC-21', '01743567802');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (111, 1707012, 'AB+', 3, 'Accident', 'Bogura', '28-DEC-21', '01743567803');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (112, 1707012, 'O+', 1, 'Thalasemia Patient', 'Bogura', '29-DEC-21', '01743567804');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (113, 1707013, 'B-', 2, 'Heart Surgery', 'Dhaka', '25-JAN-22', '01743567805');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (114, 1707014, 'A-', 4, 'Cancer Treatment', 'Jashore', '12-JAN-21', '01743567806');
INSERT INTO REQUEST (requestId, userId, requestedGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (115, 1707017, 'AB-', 3, 'Accident', 'Khulna', '10-JAN-21', '01743567807');

DBMS_OUTPUT.PUT_LINE('Data inserted in each table.');
END;
/

-- Displaying inserted data in console
    prompt Showing table data
    prompt --------------------------------
    
    prompt Showing USERDATA table data
    prompt --------------------------------

SELECT * FROM USERDATA;
    prompt Showing DONOR table data
    prompt --------------------------------

SELECT * FROM DONOR;
    prompt Showing REQUEST table data
    prompt --------------------------------

SELECT * FROM REQUEST;

