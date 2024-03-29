CREATE SCHEMA QuanLySinhVien;
USE
QuanLySinhVien;

CREATE TABLE class
(
    ClassID   INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ClassName VARCHAR(60) NOT NULL,
    StartDate DATETIME    NOT NULL,
    Status    BIT
);

CREATE TABLE student
(
    StudentID   INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    StudentName VARCHAR(30) NOT NULL,
    Address     VARCHAR(50),
    Phone       VARCHAR(20),
    Status      BIT,
    ClassID     INT         NOT NULL,
    FOREIGN KEY (ClassID) REFERENCES Class (ClassID)
);

CREATE TABLE `subject`
(
    SubID   INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SubName VARCHAR(30) NOT NULL,
    Credit  TINYINT     NOT NULL DEFAULT 1 CHECK (Credit >= 1),
    Status  BIT                  DEFAULT 1
);

CREATE TABLE mark
(
    MarkID    INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SubID     INT NOT NULL,
    StudentID INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK (0 < Mark < 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubID, StudentID),
    FOREIGN KEY (SubID) REFERENCES subject (SubID),
    FOREIGN KEY (StudentID) REFERENCES student (StudentID)
);