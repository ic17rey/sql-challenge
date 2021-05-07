--Drop any existing tables with the names to use for the challenge
DROP TABLE if exists titles;
DROP TABLE if exists departments;
DROP TABLE if exists employees;
DROP TABLE if exists dept_emp;
DROP TABLE if exists dept_manager;
DROP TABLE if exists salaries;

-- Create Title table
CREATE TABLE titles (
    title_id        VARCHAR(5)      PRIMARY KEY    NOT NULL,
    title           VARCHAR(50)     NOT NULL
);

-- Create Departments table
CREATE TABLE departments (
    dept_no        VARCHAR(4)       PRIMARY KEY    NOT NULL,
    dept_name      VARCHAR(50)                     NOT NULL
);

-- Create Employees table
CREATE TABLE employees (
    emp_no          INT             PRIMARY KEY    NOT NULL,
    emp_title_id    VARCHAR(5)                     NOT NULL,
    birth_date      DATE                           NOT NULL,
    first_name      VARCHAR(16)                    NOT NULL,
    last_name       VARCHAR(16)                    NOT NULL,
    sex             VARCHAR(1)                     NOT NULL,
    hire_date       DATE                           NOT NULL,
    FOREIGN KEY(emp_title_id)	REFERENCES titles(title_id)    
);

-- Create Department Employees table
CREATE TABLE dept_emp (
    emp_no        INT                               NOT NULL,
    dept_no       VARCHAR(4)                        NOT NULL,
    PRIMARY KEY(emp_no, dept_no),
    FOREIGN KEY(emp_no) 		REFERENCES employees(emp_no),    
    FOREIGN KEY(dept_no) 		REFERENCES departments(dept_no)   
);

-- Create Department Managers table
CREATE TABLE dept_manager (
    dept_no       VARCHAR(4)                        NOT NULL,
    emp_no        INT                               NOT NULL,
    PRIMARY KEY(dept_no, emp_no),
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no),    
    FOREIGN KEY(dept_no) REFERENCES departments(dept_no)   
);

-- Create Salaries table
CREATE TABLE salaries (
    emp_no       INT                               NOT NULL,
    salary       INT                               NOT NULL,
    PRIMARY KEY(emp_no, salary),
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * 
FROM dept_emp;
