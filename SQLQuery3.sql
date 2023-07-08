--UC1 Ability to create a payroll service database;
create database payroll_service;
use payroll_service;

--UC2 create a employee payroll table
create table employee_payroll(empid int identity (1,1) primary key, name varchar (20), Salary float, StartDate date);

--UC3 create employee payroll data
insert into employee_payroll values('John','35000','2022-05-10'),('Rockey','50000','2022-06-10');

--UC4 retrieve all the employee payroll data
select * from employee_payroll

--UC5 salary data for a particular employee
select Salary from employee_payroll where name='John';
select * from employee_payroll where satrtDate between cast('2022-05-10' as date) and getdate();

--UC6 add Gender to Employee Payroll Table
select * from employee_payroll;
alter table employee_payroll add Gender char(1);
update employee_payroll set Gender='M';

--UC7 find sum, average, min, max and number of male and female employees
select * from employee_payroll;
select sum(salary) as TotalSalary from employee_payroll;
select max(salary) as Maximum from employee_payroll;
select min(salary) as Minimum from employee_payroll;
select avg(salary) as AverageSalary from employee_payroll;
select count(salary) as NumOfEmployees from employee_payroll;

--UC8 employee phone, address, Department
alter table employee_payroll add Phone bigint;
select * from employee_payroll;
alter table employee_payroll add Address varchar(200);
alter table employee_payroll add Department varchar(200);


