-- create table emp_cp
-- as select employee_id,first_name from hr.employees where employee_id between 100 and 104;

-- Select * from emp_cp;


-- -- IMPLICIT CURCSOR 
-- BEGIN 
--     dbms_output.put_line('we are inside the begin');
--     -- update emp_cp set first_name = 'Paridhi' ;
--     delete from emp_cp where employee_id < 103;
--     dbms_output.put_line(SQL%rowcount); -- count the num of row effected by the sql query 
    
-- end;

-- EXPLICIT CURSOR 

-- declare
--   cursor emp_cur is select * from emp_cp;

-- begin 
--     open emp_cur;
--     if emp_cur%found then
--        dbms_output.put_line('cursor found');
--     elsif emp_cur%notfound then
--        dbms_output.put_line('cursor not found');
--     end if;
-- end;
-- /

-- declare
--     cursor emp_cur is select * from emp_cp;
--     emp_record emp_cp%rowtype; 

-- begin 
--     open emp_cur;
--     fetch emp_cur into emp_record ;
    
--     if emp_cur%found then
--        dbms_output.put_line('cursor found');
--     elsif emp_cur%notfound then
--        dbms_output.put_line('cursor not found');
--     end if;
-- end;
-- /

-- declare
--     cursor emp_cur is select * from emp_cp;   -- created explicit cursor 
--     emp_record emp_cp%rowtype; -- record variable as same as of the table 

-- begin 
--     open emp_cur;            -- opened cursor 
    
--     if emp_cur%isopen then        -- is cursor open ==> ten TRUE ,ESLE ==>FALSE 
--        dbms_output.put_line('cursor open');
--     end if;
--     close emp_cur;      -- close the cursor here   
-- end;
-- /

-- declare
--     cursor emp_cur is select * from emp_cp;   -- created explicit cursor 
--     emp_record emp_cp%rowtype; -- record variable as same as of the table 

-- begin 
--     open emp_cur;            -- opened cursor 
--     fetch emp_cur into emp_record;   -- here we fetch the data from cursor 

--     if emp_cur%isopen then        -- is cursor open ==> ten TRUE ,ESLE ==>FALSE 
--        dbms_output.put_line('cursor open');
--     end if;

--     if emp_cur%found then -- true(based on the fetch output)
--         dbms_output.put_line('cursor got the data');
--     else
--         dbms_output.put_line('cursor dont found the data');
--     end if ;

--     close emp_cur;      -- close the cursor here   
-- end;
-- /

-- printing values from cursor 

-- using while loop 

-- declare
--     cursor emp_cur is select * from emp_cp;   -- created explicit cursor 
--     emp_record emp_cp%rowtype; -- record variable as same as of the table 

-- begin 
--     open emp_cur;            
--     fetch emp_cur into emp_record;    

--     while emp_cur%found loop 
--        dbms_output.put_line(emp_record.employee_id);
--         fetch emp_cur into emp_record;
--     end loop ;
--     close emp_cur;       
-- end;
-- /


-- using for loop 
declare
    cursor emp_cur is select * from emp_cp;   -- created explicit cursor

begin 
    for line in emp_cur loop 
        dbms_output.put_line(line.employee_id);
    end loop ;
end;
/