execute procedure_test()
/
create or replace procedure second_procedure
as 
BEGIN
    dbms_output.put_line('calling second procedure and then first procedure');
    procedure_test;
end;
/
create or replace procedure second_procedure(salary in int)
as 
begin 
    dbms_output.put_line('procedure input value '|| ' '||salary);
end;
/