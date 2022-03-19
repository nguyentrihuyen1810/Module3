CREATE SCHEMA quanlybanhang;
USE quanlybanhang;

CREATE TABLE customer(
	cID INT PRIMARY KEY,
    cName VARCHAR(25) NOT NULL,
    cAge INT
);

CREATE TABLE `order` (
	oID INT PRIMARY KEY,
    cID INT,
    oDate DATETIME,
    oTotalPrice FLOAT,
    FOREIGN KEY (cID) REFERENCES customer (cID)
);

CREATE TABLE orderDetail(
	oID INT,
    pID INT,
    odQTY SMALLINT,
    PRIMARY KEY (oID, pID),
    FOREIGN KEY (oID) REFERENCES  `order` (oID),
    FOREIGN KEY (pID) REFERENCES product (pID)
);

CREATE TABLE product(
	pID INT NOT NULL PRIMARY KEY,
    pName VARCHAR(25),
    pPrice DOUBLE
);