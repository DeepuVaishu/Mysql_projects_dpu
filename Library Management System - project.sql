create database library; 

use library;

create table Branch(
Branch_no int  primary key,  
Manager_Id int, 
Branch_address varchar(100),  
Contact_no bigint
);

insert into Branch values 
(1, 201, '123 Main St, CityA', '1234567890'),(2, 203, '456 Oak St, CityB', '2345678901'),
(3, 205, '789 Pine St, CityC', '3456789012'),(4, 207, '101 Maple St, CityD', '4567890123'),
(5, 209, '105 Birch St, CityE', '5678901234'),(6, 211, '202 Cedar St, CityF', '6789012345'),
(7, 213, '303 Elm St, CityG', '7890123456'),(8, 215, '404 Aspen St, CityH', '8901234567');
select * from branch;

create table Employee (
    Emp_Id int primary key,
    Emp_name varchar(100),
    Position varchar(40),
    Salary int,
    Branch_no int,
    foreign key (Branch_no) references Branch(Branch_no)
); 

insert into Employee values 
(201, 'Celine Cooper', 'Manager', 60000, 1),(202, 'Myla Gaines', 'Assistant', 40000, 1),
(203, 'Trinity Henson', 'Manager', 65000, 2),(204, 'Banks Dorsey', 'Assistant', 35000, 2),
(205, 'Tristan Richards', 'Manager', 62000, 3),(206, 'Emmitt English', 'Assistant', 45000, 3),
(207, 'Sloan Rubio', 'Manager', 63000, 4),(208, 'Sam Mathews', 'Assistant', 48000, 4),
(209, 'Cristian Martinez', 'Manager', 65000, 5),(210, 'Nathalia Shelton', 'Assistant', 42000, 5),
(211, 'Maddox Osborne', 'Manager', 62000, 6),(212, 'Lawson Richards', 'Assistant', 43000, 6),
(213, 'Oliver Weiss', 'Manager', 63000, 7),(214, 'Crystal Hernandez', 'Assistant', 41000, 7),
(215, 'Andrew Gallagher', 'Manager', 61000, 8),(216, 'Jack Black', 'Assistant', 45000, 8),
(217, 'Aniya Pace', 'Deputy Manager', 60000, 7),(218, 'Galilea Knox', 'Assistant', 40000, 7),
(219, 'Kasen Villalobos', 'Deputy Manager', 65000, 4),(220, 'Warren Bishop', 'Assistant', 47000, 1),
(221, 'Aliza Stuart', 'Deputy Manager', 62000, 2),(222, 'Griffin Cantu', 'Assistant', 45000, 3),
(223, 'Rory Greene', 'Assistant', 63000, 5),(224, 'Luka Mathis', 'Assistant', 40000, 2),
(225, 'Jamir Harding', 'Assistant', 65000, 3),(226, 'Abraham Church', 'Assistant', 42000, 7),
(227, 'Omar Drake', 'Assistant', 62000, 4),(228, 'Phoenix Arnold', 'Assistant', 43000, 7),
(229, 'Ayleen Duncan', 'Assistant', 63000, 5),(230, 'Cruz Summers', 'Assistant', 41000, 6),
(231, 'Laura Allen', 'Assistant', 42000, 6),(232, 'Michael Brown', 'Assistant', 43000, 6),
(233, 'Nancy Clark', 'Assistant', 44000, 7),(234, 'Oliver Davis', 'Assistant', 41000, 6),
(235, 'Paula Evans', 'Assistant', 42000, 8),(236, 'Quincy Foster', 'Assistant', 43000, 8),
(237, 'Rachel Green', 'Assistant', 44000, 6),(238, 'Steve Hall', 'Assistant', 41000, 6);

select * from employee;

create table Books( 
ISBN varchar(25) primary key,  
Book_title varchar(100), 
Category varchar(40),  
Rental_Price decimal(10,2), 
Status varchar(3), 
Author varchar(100), 
Publisher varchar(100)
);

insert into Books  values
('978-3-16-148410-0', 'Introduction to Algorithms', 'Technology', 30.00, 'yes', 'Cormen et al.', 'MIT Press'),
('978-0-262-03384-8', 'Artificial Intelligence', 'Technology', 40.00, 'no', 'Russell & Norvig', 'Pearson'),
('978-0-134-49839-3', 'Database System Concepts', 'Technology', 35.00, 'yes', 'Silberschatz et al.', 'McGraw-Hill'),
('978-1-861-97360-0', 'History of the World', 'History', 25.00, 'yes', 'J.M. Roberts', 'Oxford University Press'),
('978-0-747-57621-6', 'Harry Potter and the Philosopher\'s Stone', 'Fiction', 20.00, 'no', 'J.K. Rowling', 'Bloomsbury'),
('978-0-671-72332-4', 'The Shining', 'Fiction', 18.00, 'yes', 'Stephen King', 'Doubleday'),
('978-0-316-76999-4', 'Becoming', 'Biography', 22.00, 'yes', 'Michelle Obama', 'Crown'),
('978-1-5011-6877-4', 'Educated', 'Biography', 20.00, 'no', 'Tara Westover', 'Random House'),
('978-0-385-53913-7', 'Sapiens: A Brief History of Humankind', 'History', 28.00, 'yes', 'Yuval Noah Harari', 'Harper'),
('978-0-7432-7356-5', 'Angels and Demons', 'Fiction', 15.00, 'yes', 'Dan Brown', 'Pocket Books'),
('978-1-4028-9462-6', '1984', 'Fiction', 18.00, 'yes', 'George Orwell', 'Secker & Warburg'),
('978-0-7432-7357-2', 'The Da Vinci Code', 'Fiction', 20.00, 'no', 'Dan Brown', 'Doubleday'),
('978-0-06-112008-4', 'To Kill a Mockingbird', 'Fiction', 15.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.'),
('978-0-307-35343-1', 'The Hunger Games', 'Fiction', 17.00, 'no', 'Suzanne Collins', 'Scholastic Press'),
('978-0-452-28423-4', 'Fahrenheit 451', 'Fiction', 16.00, 'yes', 'Ray Bradbury', 'Ballantine Books'),
('978-0-7432-7359-6', 'Digital Fortress', 'Fiction', 14.00, 'yes', 'Dan Brown', 'St. Martin\'s Press'),
('978-0-7432-7358-9', 'Deception Point', 'Fiction', 15.00, 'no', 'Dan Brown', 'Pocket Books'),
('978-0-345-39180-3', 'A Game of Thrones', 'Fantasy', 22.00, 'yes', 'George R.R. Martin', 'Bantam Books'),
('978-0-452-28424-1', 'Brave New World', 'Fiction', 18.00, 'yes', 'Aldous Huxley', 'Chatto & Windus'),
('978-0-316-76999-5', 'The Great Gatsby', 'Fiction', 15.00, 'no', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons'),
('978-0-394-58816-2', 'Catch-22', 'Fiction', 22, 'yes', 'Joseph Heller', 'Simon & Schuster'),
('978-0-316-76948-0', 'The Silent Patient', 'Thriller', 35, 'yes', 'Alex Michaelides', 'Celadon Books'),
('978-1-250-30899-3', 'The Night Circus', 'Fantasy', 28, 'yes', 'Erin Morgenstern', 'Anchor'),
('978-0-316-01394-4', 'The Institute', 'Horror', 33, 'no', 'Stephen King', 'Scribner');

select * from books;

create table Customer(  
Customer_Id int primary key, 
Customer_name varchar(100),  
Customer_address varchar(100), 
Reg_date date 
);

insert into Customer values
(4001, 'Imani Mays', '789 Pine St, CityC', '2021-12-15'),
(4002, 'Presley McCall', '123 Maple St, CityD', '2022-01-20'),
(4003, 'Nathalia Sullivan', '456 Oak St, CityB', '2020-11-05'),
(4004, 'Saul Holmes', '202 Cedar St, CityF', '2019-09-10'),
(4005, 'Aliyah Mullins', '303 Elm St, CityG', '2023-02-22'),
(4006, 'Scarlett Jons', '404 Aspen St, CityH', '2021-04-12'),
(4007, 'Carmelo Snow', '505 Redwood St, CityI', '2020-06-18'),
(4008, 'Rosemary Shaw', '606 Willow St, CityJ', '2021-08-25'),
(4009, 'Audrey Abbott', '123 Birch St, CityE', '2022-03-30'),
(4010, 'Janiyah Tucker', '789 Pine St, CityC', '2023-05-15'),
(4011, 'Ryan Tyler', '789 Pine St, CityC', '2022-05-20'),
(4012, 'Vivian Cruz', '123 Maple St, CityD', '2021-07-15'),
(4013, 'Alexia Rosales', '456 Oak St, CityB', '2023-01-10'),
(4014, 'Izaiah Richmond', '202 Cedar St, CityF', '2020-10-05'),
(4015, 'Carmen Frye', '303 Elm St, CityG', '2023-03-12'),
(4016, 'Kevin Parker', '101 Birch St, CityH', '2021-03-01'),
(4017, 'Linda Scott', '202 Maple St, CityI', '2020-09-10');

select * from customer;

create table IssueStatus(
Issue_Id int primary key,  
Issued_book_name varchar(100),
Issued_cust int,
Issue_date date, 
Isbn_book varchar(25),
foreign key (Issued_cust)  references customer(customer_id),
foreign key (Isbn_book) references books(isbn) 
); 

insert into IssueStatus values
(5001, 'Introduction to Algorithms', 4001,'2023-06-01', '978-3-16-148410-0'),
(5002, 'Artificial Intelligence',4002,  '2023-06-15', '978-0-262-03384-8'),
(5003, 'Database System Concepts',4003, '2023-06-20', '978-0-134-49839-3'),
(5004, 'History of the World',4004, '2023-06-25', '978-1-861-97360-0'),
(5005, 'Harry Potter and the Philosopher\'s Stone', 4005,'2023-06-30', '978-0-747-57621-6'),
(5006, 'The Shining', 4006, '2023-07-01', '978-0-671-72332-4'),
(5007, 'Becoming',4007, '2023-07-05', '978-0-316-76999-4'),
(5008, 'Educated',4008, '2023-07-10', '978-1-5011-6877-4'),
(5009, 'Sapiens: A Brief History of Humankind',4009, '2023-07-15', '978-0-385-53913-7'),
(5010, 'Angels and Demons',4010, '2023-07-20', '978-0-7432-7356-5'),
(5011, '1984',4011,  '2023-07-25', '978-1-4028-9462-6'),
(5012, 'The Da Vinci Code',4012,  '2023-07-28', '978-0-7432-7357-2'),
(5013, 'To Kill a Mockingbird',4013,  '2023-07-30', '978-0-06-112008-4'),
(5014, 'The Hunger Games', 4014, '2023-08-01', '978-0-307-35343-1'),
(5015, 'Fahrenheit 451',4015,  '2023-08-03', '978-0-452-28423-4');
select * from issuestatus;


create table ReturnStatus(  
Return_Id int primary key,  
Return_cust varchar(100),  
Return_book_name varchar(100), 
Return_date date,  
Isbn_book2 varchar(25),
foreign key (Isbn_book2) references books(isbn) 
);

insert into ReturnStatus values
(601, 'Imani Mays', 'Introduction to Algorithms', '2023-07-01', '978-3-16-148410-0'),
(602, 'Presley McCall', 'Artificial Intelligence', '2023-07-10', '978-0-262-03384-8'),
(603, 'Nathalia Sullivan', 'Database System Concepts', '2023-07-15', '978-0-134-49839-3'),
(604, 'Saul Holmes', 'History of the World', '2023-07-20', '978-1-861-97360-0'),
(605, 'Aliyah Mullins', 'Harry Potter and the Philosopher\'s Stone', '2023-07-25', '978-0-747-57621-6'),
(606, 'Scarlett Jons', 'The Shining', '2023-08-01', '978-0-671-72332-4'),
(607, 'Carmelo Snow', 'Becoming', '2023-08-05', '978-0-316-76999-4'),
(608, 'Rosemary Shaw', 'Educated', '2023-08-10', '978-1-5011-6877-4'),
(609, 'Audrey Abbott', 'Sapiens: A Brief History of Humankind', '2023-08-15', '978-0-385-53913-7'),
(610, 'Janiyah Tucker', 'Angels and Demons', '2023-08-20', '978-0-7432-7356-5');
select * from returnstatus;

/* 1. Retrieve the book title, category, and rental price of all available books. */
select book_title,category,rental_price from books 
where status='yes';

/*2. List the employee names and their respective salaries in descending order of salary */
select emp_name,salary from employee 
order by salary desc;

/* 3. Retrieve the book titles and the corresponding customers who have issued those books. */
select i.Issued_book_name,c.customer_name from issuestatus i 
inner join customer c 
on i.issued_cust=c.customer_id;

/*4. Display the total count of books in each category. */
select category,count(category) as no_of_books 
from books group by category;

/* 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.*/
select emp_name,position from employee where salary > 50000;

/* 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.*/
select customer_name from customer 
where reg_date < '2022-01-01' and customer_id not in
(select issued_cust from issuestatus);
-- --------------- using stored procedure----------------------------
delimiter //
create procedure Get_custns_b22()
begin
select customer_name from customer 
where reg_date < '2022-01-01' and customer_id not in
(select issued_cust from issuestatus);
end//
delimiter ;
call Get_custns_b22();


/* 7. Display the branch numbers and the total count of employees in each branch. */
select branch_no,count(emp_id) as total_no_of_employees 
from employee group by branch_no;

/* 8. Display the names of customers who have issued books in the month of June 2023 */
select c.customer_name from  issuestatus i 
left join customer c on c.customer_id=i.issued_cust 
where issue_date between '2023-06-01' and '2023-06-30' 
order by customer_name asc;

/* 9. Retrieve book_title from book table containing history. */
select book_title from books 
where category ='history';
                        -- ---by creating view---------
create view History_books as 
select Book_title from books where category = 'history';
select * from History_books;

/*10.Retrieve the branch numbers along with the count of employees for branches having more than 5 */
select branch_no,count(emp_id) as total_no_of_employees 
from employee 
group by branch_no 
having count(emp_id)>5;
-- -----------------------using functions---------------
delimiter //
create function Emp_count_by_branch(b_no int)
returns int
deterministic
begin 
 declare emp_count int;
 select count(emp_id) into emp_count from employee
 where branch_no= b_no;
 return emp_count;
end//
delimiter ;
select branch_no,Emp_count_by_branch(branch_no) as total_employees 
from branch having total_employees >5;

/*11. Retrieve the names of employees who manage branches and their respective branch addresses.*/
select e.emp_name,b.branch_address from employee e 
join branch b on e.branch_no=b.branch_no 
where e.position='Manager';
-- ------------------- alternative-----------------
select e.emp_name, b.branch_address from branch b
join employee e on b.manager_id = e.emp_id order by emp_name; 


/*12.  Display the names of customers who have issued books with a rental price higher than Rs. 25.*/
select customer_name from customer
where customer_id in(
select i.issued_cust from issuestatus i 
join books b 
on i.issued_book_name = b.book_title 
where b.rental_price>25)
order by  customer_name asc;







