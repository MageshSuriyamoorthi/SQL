create table storageprocee
 ([AddressId] int Primary key identity,[AddressLine1] nvarchar(60) ,[AddressLine2] nvarchar(60),[City] nvarchar(30),
 [StateProvinceID] int,[PostalCode] nvarchar(15),[SpatialLocation] nvarchar(15),
 [rowguid] uniqueidentifier,[ModifiedDate] datetime)
 
 insert into storageprocee  ([AddressId],[AddressLine1],[AddressLine2],[City],
 [StateProvinceID],[PostalCode],[SpatialLocation],
 [rowguid] ,[ModifiedDate] )

  select * from storageprocee

  SELECT [AddressId],[AddressLine1],[AddressLine2] ,[City] ,
 [StateProvinceID] ,[PostalCode] ,[SpatialLocation] ,
 [rowguid] ,[ModifiedDate] FROM Person.Address

 CREATE PROCEDURE StoreProcedureDeleting
(
@PostalCode nvarchar(15)
)

as 
begin

delete from Person.Address where PostalCode=@PostalCode
 
end

EXECUTE StoreProcedureDeleting '98011'

select * from storageprocee;