--Analysis file/creating queries
-- View the tables as needed
SELECT * FROM titles;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;

	 
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees e
JOIN salaries s
	ON (e.emp_no = s.emp_no);

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = '1986';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- departments has dept_no and dept_name, dept_manager has manager emp_no
SELECT
	d.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
FROM departments d
JOIN dept_manager dm
	ON (d.dept_no = dm.dept_no)
JOIN employees e
	ON (dm.emp_no = e.emp_no);

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
-- dept_emp has the employee department number, but departments has the name of the department
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees e
JOIN dept_emp de
	ON (e.emp_no = de.emp_no)
JOIN departments dept_no
	ON (de.dept_no d.dept_no);

/* Want to ask how Using works when there are three tables 
SELECT 
    e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
USING (emp_no)
JOIN departments d
USING (dept_no); */


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT 
	first_name,
	last_name,
	sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- similar to 4. but only want the Sales dept employees
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees e
JOIN dept_emp de
USING (emp_no)
JOIN departments d
USING (dept_no)
WHERE dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees e
JOIN dept_emp de
USING (emp_no)
JOIN departments d
USING (dept_no)
WHERE dept_name IN ('Sales', 'Development');

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT
	last_name,
	COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
