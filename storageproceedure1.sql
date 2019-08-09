 create table storageproceedure1
 ([AddressId] int Primary key identity,[AddressLine1] nvarchar(60) ,[AddressLine2] nvarchar(60),[City] nvarchar(30),
 [StateProvinceID] int)

 insert into storageproceedure1 values('junction road','secundrabad','hyderabad',500046)

select * from storageproceedure1

CREATE PROCEDURE StoreProcedureDeleting1
(
@PostalCode nvarchar(15)
)

as 
begin
delete from storageproceedure1 where StateProvinceID=@PostalCode
 
end

EXECUTE StoreProcedureDeleting1 500046

select * from storageproceedure1 
  
