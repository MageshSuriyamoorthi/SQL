create table book(bookno int primary key identity,bookname varchar(50),place varchar(30))


insert into book values('ring of fire','india')

select * from book

create table payment1(bankid int primary key identity,bankname varchar(50),bookname varchar(30),bookno int


FOREIGN KEY(bookno) references book(bookno))

insert into payment1 values('aaa','ring of fire',1)

select * from payment1

select * from book,payment1 where book.bookno=payment1.bookno;

update payment1 set bankname='bbb' where bookno=1

if object_id('hello1') is not null
drop trigger Hello1

create trigger hello1
on payment1
after update, insert, delete
as
begin
	print 'thank you for the table changes done'
	select * from book
end
go

select * from payment1

insert into book values('ring of fire','india')