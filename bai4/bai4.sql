use student_management

select sub_id, sub_name, credit, status_sub
from subjects
group by sub_id, sub_name, credit, status_sub
having credit = (select max(credit) from subjects);

select subjects.sub_id, subjects.sub_name, subjects.credit, subjects.status_sub
from subjects
join mark on subjects.sub_id = mark.sub_id
group by subjects.sub_id, subjects.sub_name, subjects.credit, subjects.status_sub
having max(mark) = (select max(mark) from mark);

select 
    students.student_id, 
    students.student_name, 
    avg(mark.mark) as avg_mark
from students
join mark on students.student_id = mark.student_id
group by students.student_id, students.student_name
order by avg_mark desc;