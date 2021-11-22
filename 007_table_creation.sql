-- Dropping any existing table of same name before creating new

DROP TABLE REQUEST;
DROP TABLE DONOR;
DROP TABLE USERDATA;


-- Creating userdata table to keep user data
CREATE TABLE USERDATA(
    userId      number(7) NOT NULL,
    userFName   varchar(30) NOT NULL,
    userLName   varchar(30) NOT NULL,
    phoneNo     varchar(12),
    gender      varchar(10),
    age         number(3)
);

-- Creating donor table to keep donor data
CREATE TABLE DONOR(
    donorId         number(7) NOT NULL,
    userId          number(7) UNIQUE NOT NULL,
    bloodGroup      varchar(4) NOT NULL,
    donorAddress    varchar(50),
    status          varchar(15) NOT NULL
);

-- Creating request table to keep data of user requests for blood.
CREATE TABLE REQUEST(
    requestId   number(7) NOT NULL,
    userId      number(7) NOT NULL,
    requestedGroup  varchar(4) NOT NULL,
    quantity    number(2),
    reason      varchar(255),
    neededAt    varchar(50), 
    neededOn    date,
    contactNo   varchar(15)
);

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
DESCRIBE USERDATA;
DESCRIBE DONOR;
DESCRIBE REQUEST;





