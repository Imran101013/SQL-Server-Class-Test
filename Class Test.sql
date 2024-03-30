create database CompanyDB;

create table Employees(
EmployeeID int Primary key not null,
FirstName varchar(30)  not null,
LastName varchar(30) not null,
DepartmentID int not null,
Foreign key (DepartmentID) references Departments (DepartmentID),
Salary decimal(30) not null
);
alter table Employees add HireDate datetime not null;

insert into Employees (EmployeeID,FirstName,LastName,Salary,HireDate,DepartmentID)
Values (10,'Imran','Uddin', 10500,'2011/3/3', 3);
insert into Employees (EmployeeID,FirstName,LastName,Salary,HireDate,DepartmentID)
values (15,'Aasim','Ahmad', 9000, '2011/3/13', 1);
insert into Employees (EmployeeID,FirstName,LastName,Salary,HireDate,DepartmentID)
values (20,'Kamal','Uddin', 10000, '2011/13/4', 4);
insert into Employees (EmployeeID,FirstName,LastName,Salary,HireDate,DepartmentID)
values (25,'Uzma','Khan',80000, '2011/2/13', 2);
insert into Employees (EmployeeID,FirstName,LastName,Salary,HireDate,DepartmentID)
values (30,'Aalam','Shah', 7500, '2011/3/22', 5);
insert into Employees (EmployeeID,FirstName,LastName,Salary,HireDate,DepartmentID)
values (35,'Sudes','Ahmad', 9000, '2011/1/13',2);
insert into Employees (EmployeeID,FirstName,LastName,Salary,HireDate,DepartmentID)
values (40,'Ikram','Ullah', 10000, '2011/5/13', 4);
insert into Employees (EmployeeID,FirstName,LastName,Salary,HireDate,DepartmentID)
values (45,'Wajahat','Ali', 8000, '2011/6/13', 3);
insert into Employees (EmployeeID,FirstName,LastName,Salary,HireDate,DepartmentID)
values (50, 'Kamran','Khan', 7000, '2011/8/25', 5);
insert into Employees (EmployeeID,FirstName,LastName,Salary,HireDate,DepartmentID)
values (55,'Ebad','Uddin', 8000, '2011/3/13',1);
select * from Employees;


create table Departments(
DepartmentID int Primary key not null,
DepartmentNAme varchar(100) not null
);

insert into Departments (DepartmentID,DepartmentNAme)
values (1,'Biology'),
       (2,'Chemistry'),
	   (3,'Physics'),
	   (4,'Maths'),
	   (5,'Geography');

select * from Departments;

UPDATE Employees SET Salary = Salary * 1.10 WHERE DepartmentID = 2;

delete from Employees where salary < 9000;

SELECT * FROM Employees AS E INNER JOIN Departments AS D ON D.DepartmentID = E.DepartmentID; 
SELECT FirstName,LastName,DepartmentName,Salary FROM Employees AS E INNER JOIN Departments AS D ON D.DepartmentID = E.DepartmentID; 
SELECT * FROM Employees AS E LEFT JOIN Departments AS D ON D.DepartmentID = E.DepartmentID; 
SELECT * FROM Employees AS E RIGHT JOIN Departments AS D ON D.DepartmentID = E.DepartmentID; 
SELECT * FROM Employees AS E INNER JOIN Departments AS D ON D.DepartmentID = E.DepartmentID where EmployeeID = 35; 
SELECT FirstName,LastName,HireDate FROM Employees where HireDate > 2011/3/3;

