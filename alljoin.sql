create table t1(empId int,empName varchar(40),empDept varchar(45))

insert into t1 values(1122,'magesh','tester')
insert into t1 values(1123,'nischal','developer')
insert into t1 values(1124,'sakthi','admin')
insert into t1 values(1125,'suraj','analyst')



create table t3(stuId int primary key ,stuName varchar(40),stuDept varchar(45),stuBldgrp varchar(10))

insert into t3 values(1100,'magesh','IT','B+ve')
insert into t3 values(1101,'nischal','CSC','B-ve')
insert into t3 values(1102,'Indra','ECE','o+ve')
insert into t3 values(1103,'Anusha','EEE','B+ve')

update t3 set stuName='Magesh'where stuId=1100  

select * from t1 join t3 
on t1.empName=t3.StuName

select * from t1 right join t3 
on t1.empName=t3.StuName

select * from t1 left join t3 
on t1.empName=t3.StuName

select * from t1 full join t3 
on t1.empName=t3.StuName

select * from t1 cross join t3 
