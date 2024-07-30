# Library Management System
## Description
This project is a simple library management system that keeps track of books, customers, and book issuance/return information. 
The Library Management System is designed to manage information about books, branches, employees, customers, book issues, and returns. It keeps track of all the essential data about the library, including book details, availability, costs, branch information, employee details, customer registrations, and the status of book issues and returns.


## Table of Contents
* Installation
* Usage
* Features
* Database Structure
* Queries
* Conclusion
* Repository Contents
* Contact Information

## Installation
1. Create a MySQL database named 'library'.
2. Create the tables as specified in the project requirements.
3. Populate the tables with data.

## Usage
To use the Library Management System, execute the provided SQL queries to perform various operations on the database. See the Queries section for details.

## Features
* Manage information about books, branches, employees, customers, book issues, and returns.
* Track book availability and rental prices.
* Maintain employee and customer records.
* Record and manage book issue and return statuses.

## Database Structure
The Library Management System database consists of the following tables:

### 1. Branch

| Column         | Data Type | Constraints             |
|----------------|-----------|-------------------------|
| Branch_no      | INT       | PRIMARY KEY             |
| Manager_Id     | INT       |                         |
| Branch_address | VARCHAR   |                         |
| Contact_no     | BIG INT   |                         |

### 2. Employee

| Column     | Data Type | Constraints                        |
|------------|-----------|------------------------------------|
| Emp_Id     | INT       | PRIMARY KEY                        |
| Emp_name   | VARCHAR   |                                    |
| Position   | VARCHAR   |                                    |
| Salary     | INT       |                                    |
| Branch_no  | INT       | FOREIGN KEY REFERENCES Branch(Branch_no) |

### 3. Books

| Column      | Data Type | Constraints             |
|-------------|-----------|-------------------------|
| ISBN        | VARCHAR   | PRIMARY KEY             |
| Book_title  | VARCHAR   |                         |
| Category    | VARCHAR   |                         |
| Rental_Price| DECIMAL   |                         |
| Status      | VARCHAR   | (yes if book available, no if not) |
| Author      | VARCHAR   |                         |
| Publisher   | VARCHAR   |                         |

### 4. Customer

| Column          | Data Type | Constraints             |
|-----------------|-----------|-------------------------|
| Customer_Id     | INT       | PRIMARY KEY             |
| Customer_name   | VARCHAR   |                         |
| Customer_address| VARCHAR   |                         |
| Reg_date        | DATE      |                         |

### 5. IssueStatus

| Column           | Data Type | Constraints                                |
|------------------|-----------|--------------------------------------------|
| Issue_Id         | INT       | PRIMARY KEY                                |
| Issued_cust      | INT       | FOREIGN KEY REFERENCES Customer(Customer_Id) |
| Issued_book_name | VARCHAR   |                                            |
| Issue_date       | DATE      |                                            |
| Isbn_book        | VARCHAR   | FOREIGN KEY REFERENCES Books(ISBN)         |

### 6. ReturnStatus

| Column           | Data Type | Constraints                                |
|------------------|-----------|--------------------------------------------|
| Return_Id        | INT       | PRIMARY KEY                                |
| Return_cust      | VARCHAR   |                                            |
| Return_book_name | VARCHAR   |                                            |
| Return_date      | DATE      |                                            |
| Isbn_book2       | VARCHAR   | FOREIGN KEY REFERENCES Books(ISBN)         |




## Queries
 1. Retrieve the book title, category, and rental price of all available books. 
 2. List the employee names and their respective salaries in descending order of salary. 
 3. Retrieve the book titles and the corresponding customers who have issued those books. 
 4. Display the total count of books in each category. 
 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
 6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 
 7. Display the branch numbers and the total count of employees in each branch. 
 8. Display the names of customers who have issued books in the month of June 2023.
 9. Retrieve book_title from book table containing history. 
 10. Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
 11. Retrieve the names of employees who manage branches and their respective branch addresses.
 12. Display the names of customers who have issued books with a rental price higher than Rs. 25.

## Conclusion
The developed Library Management System effectively addresses the need for organizing and managing library resources. By implementing a relational database structure, the system efficiently stores information about books, customers, employees, and library branches. The system's functionalities, including book issuance, return, availability tracking, and various query capabilities, enhance library operations and provide valuable insights.

## Repository Contents
1. Library Management System - project.sql: Directory containing SQL scripts for creating the database, tables, and inserting initial data and various queries.

2. library project.docx: Word file containing screenshots of the results for each query.

3. README.md: This file, providing an overview of the project, installation instructions, usage examples, and more.


## Contact Information
For any questions or feedback, please reach out to deepthydevadasan@gmail.com.
