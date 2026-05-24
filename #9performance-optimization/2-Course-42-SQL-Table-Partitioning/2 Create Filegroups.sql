--create filegroup
alter database SalesDB add filegroup FG_2023;
alter database SalesDB add filegroup FG_2024;
alter database SalesDB add filegroup FG_2025;
alter database SalesDB add filegroup FG_2026; 

--remove filegroup
alter database SalesDB remove filegroup FG_2023