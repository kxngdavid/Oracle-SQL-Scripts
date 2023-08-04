--======================================================================
--Script to create a table
--======================================================================
CREATE TABLE employees (
    employee_name VARCHAR2(100),
    department VARCHAR2(50),
    salary NUMBER(10, 2),
    position VARCHAR2(50),
    hire_date DATE,
    employee_number NUMBER(10) PRIMARY KEY
);

--==========================================================================
--Script to insert values into the table
--==========================================================================
INSERT ALL
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('John Doe', 'Finance', 50000.00, 'Accountant', TO_DATE('2023-07-01', 'YYYY-MM-DD'), 101)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Jane Smith', 'HR', 45000.00, 'HR Manager', TO_DATE('2023-07-02', 'YYYY-MM-DD'), 102)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Michael Johnson', 'IT', 60000.00, 'Software Engineer', TO_DATE('2023-07-03', 'YYYY-MM-DD'), 103)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Emily Lee', 'Marketing', 48000.00, 'Marketing Specialist', TO_DATE('2023-07-04', 'YYYY-MM-DD'), 104)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('David Wang', 'Sales', 55000.00, 'Sales Representative', TO_DATE('2023-07-05', 'YYYY-MM-DD'), 105)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Sophia Kim', 'Operations', 52000.00, 'Operations Manager', TO_DATE('2023-07-06', 'YYYY-MM-DD'), 106)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Daniel Brown', 'IT', 58000.00, 'System Administrator', TO_DATE('2023-07-07', 'YYYY-MM-DD'), 107)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Olivia Wilson', 'Finance', 49000.00, 'Financial Analyst', TO_DATE('2023-07-08', 'YYYY-MM-DD'), 108)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('James Lee', 'Marketing', 47000.00, 'Marketing Coordinator', TO_DATE('2023-07-09', 'YYYY-MM-DD'), 109)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Ava Miller', 'HR', 46000.00, 'HR Coordinator', TO_DATE('2023-07-10', 'YYYY-MM-DD'), 110)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Sarah Johnson', 'Finance', 52000.00, 'Financial Analyst', TO_DATE('2023-07-11', 'YYYY-MM-DD'), 111)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('William Chen', 'IT', 62000.00, 'Software Engineer', TO_DATE('2023-07-12', 'YYYY-MM-DD'), 112)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Emma Davis', 'Sales', 53000.00, 'Sales Representative', TO_DATE('2023-07-13', 'YYYY-MM-DD'), 113)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Noah Martinez', 'Operations', 54000.00, 'Operations Coordinator', TO_DATE('2023-07-14', 'YYYY-MM-DD'), 114)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Isabella Taylor', 'Marketing', 49000.00, 'Marketing Analyst', TO_DATE('2023-07-15', 'YYYY-MM-DD'), 115)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Mason Hernandez', 'IT', 58000.00, 'System Administrator', TO_DATE('2023-07-16', 'YYYY-MM-DD'), 116)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Sophia Nguyen', 'Finance', 48000.00, 'Accountant', TO_DATE('2023-07-17', 'YYYY-MM-DD'), 117)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Oliver Kim', 'Marketing', 51000.00, 'Marketing Specialist', TO_DATE('2023-07-18', 'YYYY-MM-DD'), 118)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('Ava Rodriguez', 'HR', 47000.00, 'HR Coordinator', TO_DATE('2023-07-19', 'YYYY-MM-DD'), 119)
    INTO employees (employee_name, department, salary, position, hire_date, employee_number)
    VALUES ('James Smith', 'Operations', 57000.00, 'Operations Manager', TO_DATE('2023-07-20', 'YYYY-MM-DD'), 120)
    select 1 from dual;
    
 
    
rem Now we've created a table. Let's try some answering some questions that wil help us understand the RANK() window function.

--=============================================================================================
rem -> Question 1: What is the name,salary,position and department of the 5th highest paid employee in the companny?
--=============================================================================================

select employee_name, 
          salary,
          position,
          department,
          row_num
from (
    select employee_name,
              salary,
              position,
              department,
              row_number( ) over (order by salary desc)  as row_num
    from employees
) subqeury
where row_num=5;

