--monitoring index usage

select 
	tbl.name as TableName,
	idx.name as IndexName,
	idx.type_desc as IndexType,
	idx.is_primary_key as IsPrimaryKey,
	idx.is_unique as IsUnique,
	idx.is_disabled as IsDisabled,
	user_seeks,
	user_scans,
	user_lookups,
	user_updates,
	coalesce(s.last_user_seek,s.last_user_scan) LastUpdate
from sys.indexes idx 
join sys.tables tbl
on idx.object_id=tbl.object_id
left join sys.dm_db_index_usage_stats s
on s.object_id=idx.object_id
and s.index_id=idx.index_id
order by tbl.name,idx.name