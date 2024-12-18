use student_management

select * from subjects where credit = (select max(credit) from subjects);

select subjects.* 
from subjects
join mark on subjects.sub_id = mark.sub_id
where mark.mark = (select max(mark) from mark);

select 
    students.student_id, 
    students.student_name, 
    avg(mark.mark) as avg_mark
from students
join mark on students.student_id = mark.student_id
group by students.student_id, students.student_name
order by avg_mark desc;