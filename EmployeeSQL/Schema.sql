drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;

--create table name departments
create table departments (
	dept_no varchar (20) not null,
	dept_name varchar (50) not null,
	primary key (dept_no)
);

select * from departments

-- create table named titles
create table titles(
	title_id varchar (10) PRIMARY KEY NOT NULL,
	title varchar(30)
);

--create table named employees
create table employees(
	emp_no int PRIMARY KEY not null,
	emp_title_id varchar (10),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date date,
	first_name varchar (30),
	last_name varchar (30),
	sex char,
	hire_date date
);

-- create table named dept_emp

create table dept_emp (
	emp_no int not null,
	dept_no varchar (20) not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no),
	primary key (dept_no,emp_no)
);


-- create table named dept_manager
create table dept_manager(
	dept_no varchar (20) not null, 
	foreign key (dept_no) references departments(dept_no),
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	primary key (dept_no,emp_no)
);


-- create table named salaries
create table salaries(
	emp_no int not null, 
	foreign key (emp_no) references employees(emp_no),
	salary int not null
);


Select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles 
