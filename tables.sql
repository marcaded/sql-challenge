CREATE TABLE title (
	title_id varchar(10) NOT null PRIMARY KEY, 
	title varchar(30) NOT NULL
);


CREATE TABLE employees (
	emp_num int NOT NULL PRIMARY KEY, 
	emp_title_id varchar(10) NOT null, 
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(30),
	hire_date date,
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
);
	
CREATE TABLE salaries (
	emp_num int not null,
	salary int,
	FOREIGN KEY (emp_num) REFERENCES employees(emp_num)
);

CREATE TABLE departments (
	dept_num varchar(10) NOT null PRIMARY KEY,
	dept_name varchar(10)
);

CREATE TABLE dept_emp (
	emp_num int NOT null,
	dept_num varchar(10) NOT null,
	FOREIGN KEY (emp_num) REFERENCES employees(emp_num),
	FOREIGN KEY (dept_num) REFERENCES departments(dept_num)
);
	
CREATE TABLE dept_manager (
	dept_num varchar(10) NOT null,
	emp_num int NOT null,
	FOREIGN KEY (dept_num) REFERENCES departments(dept_num),
	FOREIGN KEY(emp_num) REFERENCES employees(emp_num)
	
);

-- Copying data from the csv files since direct exports didnt work
COPY title(title_id, title)
FROM 'C:\Users\dawso\sql-challenge\Starter_Code\data\titles.csv'
DELIMITER ',' 
CSV HEADER;

COPY salaries(emp_no, salary)
FROM 'C:\Users\dawso\sql-challenge\Starter_Code\data\salaries.csv'
DELIMITER ',' 
CSV HEADER;

COPY employees(emp_num,emp_title_id,birth_date,first_name,last_name,sex,hire_date)
FROM 'C:\Users\dawso\sql-challenge\Starter_Code\data\employees.csv'
DELIMITER ',' 
CSV HEADER;

COPY dept_manager(dept_num, emp_num)
FROM 'C:\Users\dawso\sql-challenge\Starter_Code\data\dept_manager.csv'
DELIMITER ',' 
CSV HEADER;

COPY dept_emp(emp_num, dept_num)
FROM 'C:\Users\dawso\sql-challenge\Starter_Code\data\dept_emp.csv'
DELIMITER ',' 
CSV HEADER;

COPY departments(dept_no, dept_name)
FROM 'C:\Users\dawso\sql-challenge\Starter_Code\data\departments.csv'
DELIMITER ',' 
CSV HEADER;
