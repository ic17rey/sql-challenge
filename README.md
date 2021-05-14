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

## Bonus  
Generate a visualization of the data by importing the SQL database into Pandas.

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

* Consult [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

* If using a password, do not upload your password to your GitHub repository. See [https://www.youtube.com/watch?v=2uaTPmNvH0I](https://www.youtube.com/watch?v=2uaTPmNvH0I) and [https://help.github.com/en/github/using-git/ignoring-files](https://help.github.com/en/github/using-git/ignoring-files) for more information.

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.

## Epilogue

Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

