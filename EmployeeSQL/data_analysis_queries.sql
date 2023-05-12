select 
e.emp_no, 
e.last_name, 
e.first_name, 
e.sex, s.salaries 
	from employees as e
	INNER JOIN salaries as s ON
	e.emp_no = s.emp_no;

select 
e.first_name, 
e.last_name, 
e.hire_date
	from employees as e
	where date_part('year', hire_date) = 1986; 

select
dm.dept_no,
d.dept_name,
dm.emp_no,
e.last_name,
e.first_name
	from dept_managers as dm
	left join departments as d on
	dm.dept_no = d.dept_no
	left join employees as e on
	dm.emp_no = e.emp_no;

select 
de.dept_no, 
de.emp_no, 
e.last_name, 
e.first_name,
d.dept_name
	from dept_emp as de
	left join employees as e on
	de.emp_no = e.emp_no
	left join departments as d on
	de.dept_no = d.dept_no;

select 
e.first_name, 
e.last_name, 
e.sex
	from employees as e
	where first_name = 'Hercules' and last_name like 'B%';

select e.emp_no, 
e.first_name,
e.last_name,
d.dept_name
	from employees as e
	left join dept_emp as de on 
	e.emp_no = de.emp_no
	left join departments as d on
	de.dept_no = d.dept_no
	where d.dept_name = 'Sales';

select e.emp_no, 
e.first_name,
e.last_name,
d.dept_name
	from employees as e
	left join dept_emp as de on 
	e.emp_no = de.emp_no
	left join departments as d on
	de.dept_no = d.dept_no
	where d.dept_name in ('Sales', 'Development');

SELECT e.last_name, COUNT(*) AS freq_count
	FROM employees as e
	GROUP BY last_name
	ORDER BY freq_count DESC;
