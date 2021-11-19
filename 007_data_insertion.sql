
-- Deleting any previous row in any table
DELETE FROM REQUEST;
DELETE FROM DONOR;
DELETE FROM USERDATA;

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

-- Inserting data in DONOR table
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, lastDonatedOn)
VALUES (1001, 1707001, 'O+', 'Munshiganj', '6-JUN-21');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, lastDonatedOn)
VALUES (1002, 1707003, 'AB+', 'Khulna', '12-AUG-21');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, lastDonatedOn)
VALUES (1003, 1707004, 'A+', 'Dhaka', '21-OCT-21');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, lastDonatedOn)
VALUES (1004, 1707005, 'B+', 'Dhaka', '30-MAR-21');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, lastDonatedOn)
VALUES (1005, 1707007, 'B+', 'Bogura', '20-MAY-21');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, lastDonatedOn)
VALUES (1006, 1707008, 'AB-', 'Nilphamari', '07-SEP-21');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, lastDonatedOn)
VALUES (1007, 1707009, 'A+', 'Barishal', '19-OCT-21');
INSERT INTO DONOR (donorId, userId, bloodGroup, donorAddress, lastDonatedOn)
VALUES (1008, 1707010, 'B+', 'Chattogram', '15-JUL-21');

-- Inserting data in REQUEST table
INSERT INTO REQUEST (requestId, userId, bloodGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (101, 1707002, 'A+', 2, 'Heart Operation', 'Dhaka', '21-NOV-21', '01743567890');
INSERT INTO REQUEST (requestId, userId, bloodGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (102, 1707003, 'B+', 1, 'Brain Operation', 'Khulna', '19-NOV-21', '01743567867');
INSERT INTO REQUEST (requestId, userId, bloodGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (103, 1707004, 'B+', 1, 'Thalasemia Patient', 'Dhaka', '28-NOV-21', '01743567895');
INSERT INTO REQUEST (requestId, userId, bloodGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (104, 1707007, 'AB+', 4, 'Blood Cancer', 'Bogura', '16-NOV-21', '01743567894');
INSERT INTO REQUEST (requestId, userId, bloodGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (105, 1707007, 'O+', 1, 'Pregnancy problem', 'Bogura', '30-NOV-21', '01743567790');
INSERT INTO REQUEST (requestId, userId, bloodGroup, quantity, reason, neededAt, neededOn, contactNo)
VALUES (106, 1707009, 'O-', 2, 'Corona Patient', 'Chattogram', '21-DEC-21', '01743567800');

-- Displaying inserted data in console
SELECT * FROM USERDATA;
SELECT * FROM DONOR;
SELECT * FROM REQUEST;