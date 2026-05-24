select 
	tbl.name as tablename,
	col.name as indexcolumn,
	idx.name as indexname,
	idx.type_desc as indextype,
	count(*) over(partition by tbl.name,col.name) columncount
from sys.indexes idx
join sys.tables tbl on idx.object_id=tbl.object_id
join sys.index_columns ic on idx.object_id=ic.object_id and idx.index_id=ic.index_id
join sys.columns col on ic.object_id=col.object_id and ic.column_id=col.column_id
order by columncount desc
