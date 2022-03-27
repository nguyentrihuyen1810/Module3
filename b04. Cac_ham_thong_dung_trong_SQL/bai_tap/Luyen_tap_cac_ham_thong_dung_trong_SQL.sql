use QuanLySinhVien;

select sub.subName,
max(sub.credit) from `Subject` sub; 

select sub.subName, 
max(m.mark) from `Subject` sub
inner join mark m on m.SubID = sub.SubID;

select s.StudentID, s.StudentName, s.Phone, s.Address, avg(mark) 
from student s join mark m on s.studentid = m.studentid
group by s.StudentName, s.StudentID
order by avg(mark) desc;
