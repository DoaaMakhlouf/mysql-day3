delimiter $

-- 7
create function hello_world(user text) returns text
deterministic
begin
 return concat('welcome ', user);
end $

-- 8
create function multiplication(n1 int, n2 int) returns int
deterministic
begin
 return n1 * n2;
end $

-- 9
create function score(sid text, sub text) returns text
deterministic
begin
 declare score_value TEXT;
 select score into score_value from student_takeexam_subject where email = sid && subjectname = sub;
 return score_value;
end $

-- 10
create function fail(sub text) returns int
deterministic
begin
 declare failed_students int default 0;
 select count(*) into failed_students from student_takeexam_subject where subjectname = sub && score < 50;
 return failed_students;
end $

-- 11
create function score_avarage(sub text) returns float
deterministic
begin
 declare average float default 0;
 select avg(score) into average from student_takeexam_subject where subjectname = sub;
 return average;
end $

-- 13
create TRIGGER trg_deleted_students
after delete on student
for each row
begin
 insert into deleted_students(firstname, address, email, gender, birth_date, lastname)
 values (OLD.firstname, OLD.address, OLD.email, OLD.gender, OLD.birth_date, OLD.lastname);
end $

-- 14
create TRIGGER trg_added_students
after insert on student
for each row
begin
 insert into backup_students(firstname, address, email, gender, birth_date, lastname)
 values (NEW.firstname, NEW.address, NEW.email, NEW.gender, NEW.birth_date, NEW.lastname);
end $

delimiter ;


