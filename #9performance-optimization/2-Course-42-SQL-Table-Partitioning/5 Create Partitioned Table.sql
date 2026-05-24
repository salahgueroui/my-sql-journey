--- Create a partitioned table using the partition scheme
create table sales.orders_partitioned
(
	Order_ID INT,
	OrderDate DATE,
	Sales INT
) ON SchemePartitionByYear(OrderDate)

--insert data into the partitioned table
insert into sales.orders_partitioned
values(2,'2023-05-15',100)

--in wich partition the data is stored?
SELECT
    p.partition_number AS PartitionNumber,
    f.name AS PartitionFilegroup,
    p.rows AS NumberOfRows
FROM sys.partitions p
JOIN sys.destination_data_spaces dds
    ON p.partition_number = dds.destination_id
JOIN sys.filegroups f
    ON dds.data_space_id = f.data_space_id
WHERE OBJECT_NAME(p.object_id) = 'Orders_Partitioned';