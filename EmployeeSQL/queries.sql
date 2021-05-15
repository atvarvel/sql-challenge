-- Shows details for each employee, including salary
-- Join employees and salaries table on emp_no to get the individual salaries
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no = s.emp_no;


-- Gives name and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';


-- Gives information on each manager, including department name and number
-- Joins employees, dept_manager, and departments to get necessary information
SELECT m.emp_no, e.first_name, e.last_name, m.dept_no, d.dept_name
FROM employees AS e
INNER JOIN dept_manager AS m ON m.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = m.dept_no;


-- Gives department name for each employee
-- Joins employees, dept_emp, and departments
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no;


-- Gives name and sex of employees with first name 'Hercules' and last name starting with 'B'
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';


-- Gives information on employees in the Sales department
-- Joins employees, dept_emp, and departments where the dept_name is 'Sales'
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';


-- Gives information on employees in both Sales and Development
-- Joins employees, dept_emp, and departments where the detp_name is either 'Sales' or 'Development'
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development';


-- Lists the number of employees who share each last name
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY count DESC;
