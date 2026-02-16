-- a store procedure is a named block of code stored in data base that perform a specific task 
-- it is complied once and can be executed multipile times without recompliation ,
-- which improves performance and reusability 
create or replace procedure procedure_test
as 
begin
    dbms_output.put_line('hello procedure'); 
end ;