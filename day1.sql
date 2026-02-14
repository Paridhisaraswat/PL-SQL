-- PL/SQL
-- (PROCEDURAL LANGUAGE/STRUCTURED QUERY LANGUAGE) is Oracle corporation's procedural extension for SQL 
-- where we combine the capabilities of SQL and programming language together 

-- fetures of PL/SQL 
-- OR 
-- Why we use PL/SQL

-- reuseability : cursor and store procedures , functions  can be reuse again and again 

-- performance : by sending entire block of statement to the database server at once 
-- it reduces network communication and benefits from server-side execution and caching 

-- error handling : it provide exception-handling mechanism 
-- to manage runtime errors gracefully , preventing program crashes 

-- we can use all the control flow structure like if-else , loops , functions 

-- PL/SQL BLOCKS 
-- DECLARATION BLOCK : IT STARTS WITH DECLARE 
-- IT IS USED TO DEFINE ANY VARIABLE , CURSOR ,EXCEPTION AND MANY MORE 

-- EXECUTABLE BLOCK 
-- THIS SECTION STARTS WITH BEGIN AND END WITH END 
-- IT CONTAINS THE ACTUAL PROGRAM LOGIC 

-- EXCEPTION-HANDLING SECTION :IT STARTS WITH EXCEPTION KEYWORD 
-- IT CONTAINS CODE TO HANDLE RUNTIME ERRORS 
-- THAT OCCURS WITHIN THE EXECUTABLE SECTION 
-- ALLOWING THE PROGRAM TO TERMINATE GRACEFULLY

begin 
    dbms_output.put_line('hello world');
    dbms_output.put_line('hello world'||'-'||'paridhi');
end;
/

-- variable declaration 
declare 
    var int := 0 ;
begin 
    var := 1;  -- value is changed 
    dbms_output.put_line('hello world'||'-'||var);
end;
/

-- IF-ELSE STATEMENT 
declare 
    var int := 0 ;
begin 
    var := 12;  -- value is changed
    var := 13;
    if (mod(var , 2)= 0) then  
        dbms_output.put_line('even num'||'-'||var);
    else
        dbms_output.put_line('odd num');
    end if ;
end;
/

-- LOOP 
-- BASIC LOOP 
-- FOR LOOP 
-- WHILE LOOP 

-- while loop 
declare 
    var int := 0 ;
begin 
    while var <= 3 loop 
        dbms_output.put_line('counter is : '|| var );
        var := var+1 ; 
    end loop ;
end ;
/
-- CURSOR 
-- this is a pointer which provide the control over the result of SQL query 
declare 
    v_name varchar(20);
    v_salary hr.employees.salary%type; -- fetch the datatype automatically 
begin 
    select first_name into v_name from hr.employees where employee_id = 102;
    select salary into v_salary from hr.employees where employee_id = 102;

    dbms_output.put_line(v_name);
    dbms_output.put_line(v_salary);
end ;
/

-- %rowtype 
-- is a attribute which is used to create a variable of record type 
-- record type we create a column with its datatype 

-- record datatype 
-- it is a data structure which is used to store different type of data together 
declare 
    v_rec hr.employees%rowtype;
begin
    select * into v_rec from hr.employees where employee_id = 102;
    dbms_output.put_line(v_rec.first_name || ' - ' || v_rec.hire_date); 
end ;