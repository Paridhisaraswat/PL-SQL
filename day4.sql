-- Triggers :
-- are the block of code that will automatically execute when a event happen 
-- for eg : insert , update ,delete 

-- these triggers are stored in the database 


-- BENEFITS OF TRIGGERS 
-- automation of taks :AUTOMATICALLY execute actions
-- audit logging :ideal for tracking changes in a table 
-- synchronizing data : they can automatically synchronize data
-- across multiple tables or even different databases 

-- create table emp_copy 
-- as
-- select employee_id , first_name from 
-- hr.employees where employee_id between 100 and 105 ;

CREATE or replace trigger emp_trigger_1
before insert on 
emp_copy 
begin 

    dbms_output.put_line('trigger called before the insert statement ');

end ;
/