CREATE TABLE student_manager.student
(
    ID      INT PRIMARY KEY,
    NAME    VARCHAR(50),
    AGE     INT NULL,
    COUNTRY VARCHAR(50) NULL
);

CREATE TABLE student_manager.class
(
    ID   INT PRIMARY KEY,
    NAME VARCHAR(25)
);

CREATE TABLE student_manager.teacher
(
    ID      INT PRIMARY KEY,
    NAME    VARCHAR(50),
    AGE     INT NULL,
    COUNTRY VARCHAR(50) NULL
);
    

