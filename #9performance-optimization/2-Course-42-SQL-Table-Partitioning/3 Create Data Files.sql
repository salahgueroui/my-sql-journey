--add .ndf files to EACH filegroups
alter database SalesDB add file 
(
 name =P_2023,--logical name
 filename='C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\P_2023.ndf',--physical name
) TO filegroup FG_2023;

alter database SalesDB add file 
(
 name =P_2024,--logical name
 filename='C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\P_2024.ndf',--physical name
) TO filegroup FG_2024;

alter database SalesDB add file 
(
 name =P_2025,--logical name
 filename='C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\P_2025.ndf',--physical name
) TO filegroup FG_2025;

alter database SalesDB add file 
(
 name =P_2026,--logical name
 filename='C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\P_2026.ndf',--physical name
) TO filegroup FG_2026;

--query to list all filegroups and their files
select fg.name as FileGroupName,
       mf.name as LogicalFileName,
       mf.physical_name as PhysicalNamePath,
         mf.size/128 as SizeInMB
from sys.filegroups fg
inner join sys.master_files mf
on fg.data_space_id = mf.data_space_id
where mf.database_id=DB_ID('SalesDB');