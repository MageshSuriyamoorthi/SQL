create table Census1
(
aid int not null PRIMARY KEY (aid) ,
fname varchar(50),
lname varchar(50),
age int,
address varchar(50),

);

insert into Census1 values(07,'magesh','magesh',23,'tn');
insert into Census1 values(03,'ajith','moorthi',22,'tn');
insert into Census1 values(03,'nischal','thiparani',21,'ap');
insert into Census1 values(05,'suraj','konangi',21,'tn');
insert into Census1 values(06,'anusha','chowdary',22,'ap');
insert into Census1 values(08,'sakthi','nandhini',45,'tn');


select * from Census1

CREATE INDEX index_Census1
ON Census1 (aid,fname,lname,age,address);

CREATE INDEX index_Census2
ON Census1 (aid,fname,lname,age,address);




UPDATE Census1
SET lname='suriyamoorthi'
WHERE aid=7;


UPDATE Census1
SET lname='sekar'
WHERE aid=8;
SELECT * from Census1
SELECT * from Census1 where address = 'tn'



