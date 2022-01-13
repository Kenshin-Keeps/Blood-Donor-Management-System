-- Dropping any existing table of same name before creating new
    prompt Droping existing table with same name as USERDATA, DONOR, REQUEST
    prompt --------------------------------

DROP TABLE REQUEST;
DROP TABLE DONOR;
DROP TABLE USERDATA;


-- Creating userdata table to keep user data
    prompt Creating USERDATA table
    prompt --------------------------------

CREATE TABLE USERDATA(
    userId      number(7) NOT NULL,
    userFName   varchar(15) NOT NULL,
    userLName   varchar(15) NOT NULL,
    phoneNo     varchar(12),
    gender      varchar(6),
    age         number(3)
);

-- Creating donor table to keep donor data
    prompt Creating donor table
    prompt --------------------------------

CREATE TABLE DONOR(
    donorId         number(7) NOT NULL,
    userId          number(7) UNIQUE NOT NULL,
    bloodGroup      varchar(3) NOT NULL,
    donorAddress    varchar(15),
    status          varchar(15) NOT NULL
);

-- Creating request table to keep data of user requests for blood.
    prompt Creating request table
    prompt --------------------------------

CREATE TABLE REQUEST(
    requestId   number(3) NOT NULL,
    userId      number(7) NOT NULL,
    requestedGroup  varchar(3) NOT NULL,
    quantity    number(2),
    reason      varchar(25),
    neededAt    varchar(15), 
    neededOn    date,
    contactNo   varchar(12)
);

    prompt Setting realtions
    prompt --------------------------------

-- Assigning primary key
ALTER TABLE USERDATA ADD CONSTRAINT 
USERDATA_PK PRIMARY KEY(userId);

-- Assigning primary and foreign key
ALTER TABLE DONOR ADD CONSTRAINT 
DONOR_PK PRIMARY KEY(donorId);
ALTER TABLE DONOR ADD CONSTRAINT
DONOR_FK FOREIGN KEY(userId) references
USERDATA(userId);

-- Assigning primary and foreign key
ALTER TABLE REQUEST ADD CONSTRAINT 
REQUEST_PK PRIMARY KEY(requestId);
ALTER TABLE REQUEST ADD CONSTRAINT
REQUEST_FK FOREIGN KEY(userId) references
USERDATA(userId);

-- Describing recently created tables
    prompt Describing created tables
    prompt --------------------------------

    prompt Describing USERDATA table
    prompt --------------------------------

DESCRIBE USERDATA;
    prompt Describing DONOR table
    prompt --------------------------------

DESCRIBE DONOR;
    prompt Describing REQUEST table
    prompt --------------------------------

DESCRIBE REQUEST;





