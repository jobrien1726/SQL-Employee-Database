CREATE TABLE depts (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR
);

CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR,
    from_date VARCHAR,
    to_date VARCHAR,
    FOREIGN KEY (dept_no) REFERENCES depts(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no INTEGER,
    from_date VARCHAR,
    to_date VARCHAR,
    FOREIGN KEY (dept_no) REFERENCES depts(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    birth_date VARCHAR,
    first_name VARCHAR,
    last_name VARCHAR,
    gender VARCHAR(1),
    hire_date VARCHAR
);

CREATE TABLE salaries (
    emp_no INTEGER,
    salary INTEGER,
    from_date VARCHAR,
    to_date VARCHAR,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
    emp_no INTEGER,
    title VARCHAR,
    from_date VARCHAR,
    to_date VARCHAR,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
