execute second_procedure(9000);
/
create or replace procedure numbers(salary in int,new_salary out int)
as 
begin 
     
    dbms_output.put_line('salary is :'||'' || salary);
    new_salary := salary + 500;

end;
/
-- create or replace procedure numbers(salary in int)
-- as 
-- begin 
     
--     dbms_output.put_line('salary is :'||'' || salary);
--     salary := salary + 500;     
-- if we do this it will give an error because salary is a input parameter 
-- it is only a read only parameter 
 
-- end;


-- if we want to take input in one parameter and return the same parameter
-- then we should use inout 
create or replace procedure numbers(salary in out int)
as 
begin 
     
    dbms_output.put_line('salary is :'||'' || salary);
    salary := salary + 500;

end;