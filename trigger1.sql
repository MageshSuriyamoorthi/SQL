create table employee1(id int,name varchar(20),age int,address varchar(30))

create table employee2(id int,name varchar(20),age int,address varchar(30))

insert into employee1 values(1,'nischal',21,'AP')
insert into employee1 values(2,'magesh',22,'TN')

select * from employee1

insert into employee2 values(3,'sakthi',25,'TN')
insert into employee2 values(2,'magesh',22,'TN')
insert into employee2 values(3,'suraj',21,'AP')

update employee2 set id=1 where age=25

select * from employee2

select * from employee1

create trigger trg
on employee1
after insert
as
begin
insert into employee2
(
id,
name,
age,
address
)
select id,
name,
age,
address 
from inserted
print'inserted'
end 
go

insert into employee1 values(3,'suraj',21,'ap')

create trigger trgdel
on employee1
after delete
as
begin
delete employee2
select
id,
name,
age,
address
from deleted
print'your data is deleted'
end 
go

delete from employee1 where id=2

select * from employee1

select * from employee2

insert into employee2 values(4,'indira',22,'ap')

delete from employee2 where id=3;