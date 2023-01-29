--List the employee number, last name, first name, sex, and salary of each employee 

select emp.emp_no, emp.first_name, emp.last_name, emp.sex,
		s.salary
from employees emp
join salaries s on emp.emp_no=s.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986

select first_name , last_name ,hire_date
from employees
where hire_date BETWEEN '1986-01-01' AND '1986-12-31'

--List the manager of each department along with their department number, department name, employee number, last name, and first name

select dm.dept_no, dep.dept_name, dm.emp_no, emp.last_name,
		emp.first_name		
from dept_manager dm
join departments dep on dep.dept_no=dm.dept_no
join employees emp on dm.emp_no=emp.emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name

select de.dept_no, emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from dept_emp de
join employees emp on de.emp_no=emp.emp_no
join departments dept on dept.dept_no=de.dept_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

select first_name, last_name, sex
from employees
where first_name='Hercules' and last_name like 'B%'

--List each employee in the Sales department, including their employee number, last name, and first name 
select de.emp_no, emp.last_name, emp.first_name
from departments dept
join dept_emp de on dept.dept_no=de.dept_no
join employees emp on de.emp_no=emp.emp_no
where dept.dept_name='Sales'

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select de.emp_no, emp.last_name, emp.first_name , dept.dept_name
from departments dept
join dept_emp de on dept.dept_no=de.dept_no
join employees emp on de.emp_no=emp.emp_no
where dept.dept_name='Sales' or dept.dept_name='Development'

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;





