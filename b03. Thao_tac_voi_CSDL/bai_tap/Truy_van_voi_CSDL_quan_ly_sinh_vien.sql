USE
QuanLySinhVien;

SELECT *
FROM Student
WHERE StudentName LIKE 'H%';

SELECT *
FROM Class
WHERE MONTH (StartDate) = 12;

SELECT *
FROM Subject
WHERE Credit BETWEEN 3 AND 5;

UPDATE Student
SET ClassID = 2
WHERE StudentName = 'Hung';

SELECT S.StudentName AS 'Student Name', Sub.SubName AS 'Subject Name', M.Mark
FROM Mark M
         INNER JOIN Student S on S.StudentID = M.StudentID
         INNER JOIN `Subject` Sub on Sub.SubID = M.SubID
ORDER BY M.Mark desc, S.StudentName asc;