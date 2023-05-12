DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
  dept_no VARCHAR(45) NOT NULL,
  dept_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
	title_id VARCHAR(45) NOT NULL,
	title VARCHAR(45) NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(45) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	sex VARCHAR(45) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(45) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_managers (
	dept_no VARCHAR(45),
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salaries INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



