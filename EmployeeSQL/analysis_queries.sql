-- 1.List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s 
ON e.emp_no = s.emp_no;

--2.List employees who were hired in 1986.
SELECT *
FROM employees
WHERE hire_date LIKE '1986%';

--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager AS dm
JOIN depts AS d
ON d.dept_no = dm.dept_no
JOIN employees AS e
ON e.emp_no = dm.emp_no;

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e
ON e.emp_no = de.emp_no
JOIN depts AS d
ON d.dept_no = de.dept_no;

--5.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * 
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e
ON e.emp_no = de.emp_no
JOIN depts AS d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e
ON e.emp_no = de.emp_no
JOIN depts AS d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales' 
OR dept_name = 'Development';

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name AS "Last Name", COUNT(last_name) AS "Last Name Count"
FROM employees
GROUP BY "Last Name"
ORDER BY "Last Name Count" DESC;
