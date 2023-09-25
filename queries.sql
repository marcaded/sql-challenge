SELECT last_name, COUNT(*) as freq
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC
LIMIT(10);

SELECT
departments.dept_num AS department_number,
departments.dept_name AS department_name,
dept_manager.emp_num AS employee_number,
employees.last_name AS last_name,
employees.first_name AS first_name
FROM departments
JOIN dept_manager ON dept_manager.dept_num = departments.dept_no
JOIN employees ON dept_manager.emp_num = employees.emp_no
LIMIT(10);


SELECT
employees.emp_num AS employee_number,
employees.last_name AS last_name,
employees.first_name AS first_name,
dept_emp.dept_num AS department_number,
departments.dept_name AS department_name
FROM employees
JOIN dept_emp ON employees.emp_num = dept_emp.emp_num
JOIN departments ON departments.dept_num = dept_emp.dept_num
LIMIT (100);




SELECT
employees.emp_num AS emp_num,
employees.last_name AS last_name,
employees.first_name AS first_name,
employees.sex AS sex,
salaries.salary AS salary
FROM employees
JOIN salaries ON employees.emp_num = salaries.emp_num
 LIMIT(10);

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > '1986-01-01' AND hire_date < '1986-12-31'
LIMIT(10);


SELECT
employees.emp_num AS employee_number,
employees.last_name AS last_name,
employees.first_name AS first_name,
departments.dept_name AS department_name
FROM employees
JOIN dept_emp ON dept_emp.emp_num = employees.emp_num
JOIN departments ON departments.dept_num = dept_emp.dept_num
WHERE departments.dept_name = 'Sales'
LIMIT(10);


SELECT
employees.emp_num AS employee_number,
employees.last_name AS last_name,
employees.first_name AS first_name,
departments.dept_name AS department_name

FROM employees
JOIN dept_emp ON dept_emp.emp_num = employees.emp_num
JOIN departments ON departments.dept_num = dept_emp.dept_num
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
LIMIT(10);


