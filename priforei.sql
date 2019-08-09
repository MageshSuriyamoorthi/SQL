create table student(sid int primary key identity,stdname varchar(50),dept varchar(30))


insert into student values('suraj','eee')

select * from student

create table factory(fid int primary key identity,emplname varchar(50),emprole varchar(30),
FOREIGN_KEY(sid) references student(sid))

insert into factory values('nischal','Analyst')

select * from factory

select * from student,factory where student.sid=factory.sid;

update factory set emplname='bbb' where sid=1

if object_id('hello1') is not null
drop trigger Hello1

create trigger hello1
on factory
after update, insert, delete
as
begin
	print 'thank you for the table changes done'
	select * from student
end
go

select emplname from factory

insert into student values('ring of fire','india')