-- CREATE or replace trigger emp_trigger_1
-- after insert on 
-- emp_copy 
-- begin 

--     dbms_output.put_line('trigger called after the insert statement ');
-- end ;
-- /

-- after update 
-- CREATE or replace trigger emp_trigger_1
-- after update on 
-- emp_copy 
-- begin 

--     dbms_output.put_line('trigger called after the update statement ');
-- end ;
-- /
CREATE or replace trigger emp_trigger_1
after update on 
emp_copy 
for each row -- runs for each row 
begin 

    dbms_output.put_line('trigger called after the update statement ');
end ;
/


-- trigger have two types 
-- row level trigger : runs for each row 
-- statement level trigger :runs for a whole statement after or before the 
-- whole statement 

CREATE or replace trigger emp_trigger_1
after update on 
emp_copy 
for each row -- runs for each row 
begin 
    if updating then 
        dbms_output.put_line('trigger called after the update statement ');
    end if ;
end ;
/


-- insert and update both together 
CREATE or replace trigger emp_trigger_1
after update or insert 
on 
emp_copy 
for each row -- runs for each row 
begin 
    if updating then 
        dbms_output.put_line('trigger called after the update statement ');
    else
        DBMS_OUTPUT.PUT_LINE('we insert');
    end if ;
end ;
/