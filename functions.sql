-- declare 
--     x int := 10;
--     y int :=0 ;
-- begin
--     numbers(x,y);
--     dbms_output.put_line('return of new salary in y variable :'|| ''||y);
-- end;

-- declare 
--     x int := 10;
-- begin
--     numbers(x);
--     dbms_output.put_line('return of new slary in same variable :'|| ''||x);
-- end;
-- /

-- -- FUNCTIONS 
-- create or replace function mytest return int is 
-- begin 
--     dbms_output.put_line('called functions');
--     return 12;
-- end;
-- /

-- DECLARE 
--     n INT;
-- BEGIN 
--     n := mytest(); -- assign the return value 
--     DBMS_OUTPUT.PUT_LINE('value of n : ' || n);
--  END; 
-- /
-- create a function which takes two parameters 
-- then find out the max num 
-- then run a loop to a X b 
-- and check if the num is divided by both the num 
-- and if not keep on increasing the num 

create or replace function lcm (num1 integer, num2 integer) return int is
great integer; 
begin 
    if num1 > num2 then 
        great := num1;
    else
        great := num2 ;
    end if ;
    while true loop 
        if (mod(great ,num1) = 0) and (mod(great , num2)= 0) then 
            return great ;
        end if ;
        great := great + 1 ;
        
    end loop ;
end ;
/

DECLARE 
     n int ;
BEGIN 
    n := lcm(6,8); -- assign the return value 
     DBMS_OUTPUT.PUT_LINE('lcm is : ' || n);
 END; 
 /