-- create a PL/SQL Program to find if the num is a armstorng num or not 
declare 
    l_num number;
    last_digit number;
    l_cube number;
    sum_of_cube number := 0 ;
    num_copy number := 0 ;
begin
    l_num :=&enter_number;
    num_copy := l_num;
    while num_copy > 0 loop
        last_digit := mod(num_copy,10);
        l_cube := last_digit * last_digit * last_digit;
        sum_of_cube := sum_of_cube + l_cube;
        num_copy := trunc(num_copy/10);
    end loop;
    if sum_of_cube = l_num then 
        dbms_output.put_line('the entered number is an armstrong number :' || l_num);
    else
        dbms_output.put_line('not an armstrong number :'|| l_num);
    end if; 
end;
/

-- prime or not 
declare
    num1 number ;
    num_of_factor number := 0;

begin 

    num1 :=&enter_number;
    for i in 1..num1 loop 
        if num1/i = 0 then 
            num_of_factor := num_of_factor + 1;
        end if ;
    end loop ;
    
    if num_of_factor = 2 then 
        dbms_output.put_line('the entered number is prime number :' || num1);
    else 
        dbms_output.put_line('the entered number is not a prime number :'|| num1);
    end if ;
end;
/   
-- using while loop find out the lcm of two num 
declare 
    num1 number ;
    num2 number ;
    lcm number:= 0;

begin 
     num1 :=&enter_number1;
     num2 :=&enter_number2;

     if num1 > num2 then 
        lcm := num1;
    else
        lcm := num2;
    end if ;

    while true loop
         if mod(lcm,num1) = 0 and mod(lcm,num2) = 0 then 
            dbms_output.put_line('LCM of both the numbers is :' || lcm);
            exit;
        else
            lcm :=lcm + 1;
        end if ;
    end loop ;
end; 
/