insert into storageproceedure1 values('palanipet','arakkonam','chennai',631002)
select * from storageproceedure1
if object_id('hello') is not null
drop trigger Hello

create trigger hello
on storageproceedure1
after update, insert, delete
as
begin
	print 'thank you for the table changes done'
	select * from storageproceedure1
end
go

insert into storageproceedure1 values('delhi parliment','plaza road','delhi',100001)

insert into storageproceedure1 values('kamala cinemas','vadapazhani','chennai',631008)

insert into storageproceedure1 values('vadacurry centr','alwarpet','chennai',600012)

delete from storageproceedure1 where StateProvinceID=600012

insert into storageproceedure1 values('vadacurry centr','alwarpet','chennai',600012)



