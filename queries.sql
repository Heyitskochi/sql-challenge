-- Question 1
select "Employees".last_name, "Employees".first_name, "Employees".gender, "Salaries".salary, "Salaries".emp_no 
from "Employees"
Inner Join "Salaries" 
on "Employees".emp_no = "Salaries".emp_no;

-- Question 2
select first_name, last_name, hire_date
from "Employees"
where Extract (Year from hire_date) = 1986;

-- Question 3
select "Employees".last_name, "Employees".first_name, "Employees".gender,  "Department_Manager".emp_no, "Department_Manager".dept_no, "Departments".dept_name
from "Department_Manager"
Inner Join "Employees" 
on "Employees".emp_no = "Department_Manager".emp_no
Inner Join "Departments"
on "Departments".dept_no = "Department_Manager".dept_no;

-- Question 4
select "Employees".last_name, "Employees".first_name, "Employees".emp_no, "Departments".dept_name
from "Employees"
Inner Join "Department_Emp" 
on "Employees".emp_no = "Department_Emp".emp_no
Inner Join "Departments"
on "Departments".dept_no = "Department_Emp".dept_no;

-- Question 5
select first_name, last_name, gender
from "Employees"
where (first_name = 'Hercules'  AND last_name Like 'B%');

-- Question 6
select "Employees".last_name, "Employees".first_name, "Employees".emp_no, "Departments".dept_name
from "Employees"
Inner Join "Department_Emp" 
on "Employees".emp_no = "Department_Emp".emp_no
Inner Join "Departments"
on "Departments".dept_no = "Department_Emp".dept_no
Where "Departments".dept_name = 'Sales';

-- Question 7
select "Employees".last_name, "Employees".first_name, "Employees".emp_no, "Departments".dept_name
from "Employees"
Inner Join "Department_Emp" 
on "Employees".emp_no = "Department_Emp".emp_no
Inner Join "Departments"
on "Departments".dept_no = "Department_Emp".dept_no
Where "Departments".dept_name = 'Sales' Or "Departments".dept_name = 'Development';

-- Question 8
select last_name, count(last_name) 
from "Employees"
group by last_name 
order by count(last_name) DESC;