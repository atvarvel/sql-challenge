SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

SELECT m.emp_no, e.first_name, e.last_name, m.dept_no, d.dept_name
FROM employees AS e
INNER JOIN dept_manager AS m ON m.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = m.dept_no;

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no;



