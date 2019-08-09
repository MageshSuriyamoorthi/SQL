select * from Person.PhoneNumberType

CREATE PROCEDURE StoreProcedureDeletng1
(
@name nvarchar(50)
)

as 
begin
delete from Person.PhoneNumberType where Name=@name
 
end

EXEC StoreProcedureDeletng1 'cell'

select * from Person.PhoneNumberType 
  
