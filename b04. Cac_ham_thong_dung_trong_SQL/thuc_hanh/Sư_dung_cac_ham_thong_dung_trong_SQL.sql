use
QuanLySinhVien;

select Address, count(StudentID) as `Số lượng học viên`
from student
group by Address;

select s.Studentid, s.StudentName, AVG(mark)
from Student s
         join Mark m on s.StudentID = m.StudentID
group by s.StudentID, s.StudentName
having avg(mark) > 15;

select s.studentid, s.studentName, AVG(mark)
from student s
         join mark m on s.studentid = m.studentid
group by s.studentid, s.studentName
having avg(mark) >= all (select avg(mark) from mark group by mark.studentid);