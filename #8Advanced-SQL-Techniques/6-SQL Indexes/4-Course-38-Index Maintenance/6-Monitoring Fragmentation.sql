SELECT
    tbl.name AS TableName,
    idx.name AS IndexName,
    s.avg_fragmentation_in_percent,
    s.page_count

FROM sys.dm_db_index_physical_stats(DB_ID(),NULL,NULL,NULL,'LIMITED') AS s

INNER JOIN sys.tables AS tbl
    ON s.object_id = tbl.object_id

INNER JOIN sys.indexes AS idx
    ON idx.object_id = s.object_id
   AND idx.index_id = s.index_id

ORDER BY s.avg_fragmentation_in_percent DESC;

--Reorganize an index with fragmentation between 5% and 30%
alter index idx_DBCustomers_CS_FirstName on sales.DBCustomers reorganize
--Rebuild an index with fragmentation above 30%
alter index idx_Customers_Country on sales.Customers rebuild