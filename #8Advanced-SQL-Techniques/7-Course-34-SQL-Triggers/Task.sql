-- Create a trigger that logs the insertion of new employees into the EmployeesLogs table.
create table Sales.EmployeesLogs
(
    LogID int identity(1,1) primary key,
    EmployeeID int,
    LogMessage varchar(255),
    LogDate datetime
);
--create a trigger that logs the insertion of new employees into the EmployeesLogs table.
create trigger trg_AfterInsertEmployees on Sales.Employees
after insert
as
begin
    insert into Sales.EmployeesLogs (EmployeeID, LogMessage, LogDate)
    select EmployeeID, 'New employee added=' + CAST(EmployeeID AS varchar(10)), getdate()
    from inserted
end;
--select all records from the EmployeesLogs table to see the logs of inserted employees.
SELECT * FROM Sales.EmployeesLogs;

-- Insert new employees into the Employees table to trigger the logging.
insert into sales.Employees
values(6,'Maria','Doe','HR','1988-01-12','F',8000,3);

insert into sales.Employees
values(7,'Maria','Doe','HR','1988-01-12','F',8000,3);
--select all records from the EmployeesLogs table to see the logs of inserted employees.
SELECT * FROM Sales.EmployeesLogs;