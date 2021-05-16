# SQL Challenge - Employee Database Tables and Queries

Using six CSV files from the database of "Pewlett Hackard" employees from the 1980s and 1990s, tables are created in an SQL database and data is analyzed.  The six CSV files are saved to the folder EmployeeSQL.

## Challenge
1. Data Engineering (Data Modeling)  
An ERD saved to the sql-challenge folder includes all of the tables and their relationships.  
The ERD was done using [Quick Database Diagrams](http://www.quickdatabasediagrams.com).  

2. Data Analysis  
A table schema, schema.sql, is included. The schema creates all the tables from the CSV files and identifies primary, composite and foreign keys for each table. Titles and departments CSVs were the first used for creating tables. These do not include any employee info - they serve to identify the names of departments and the titles held by the employees. In all there are six tables created by the challenge_schema.sql.

* Lists of the following details are included in the file queries.sql.
  *  List for each employee the employee number, last name, first name, sex, and salary.
  *  List first name, last name, and hire date for employees who were hired in 1986.
  *  List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
  *  List the department of each employee with the following information: employee number, last name, first name, and department name.
  *  List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
  *  List all employees in the Sales department, including their employee number, last name, first name, and department name.
  *  List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
  *  In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Bonus challenge
Tables from the SQL database are imported into Pandas to analyze salaries and salaries by title.  
A histogram is included to view common salaries for employees and a bar chart examines average salary by title.
