select
	schema_name(t.schema_id) as schemaname,
	t.name as tablename,
	s.name as statisticname,
	sp.last_updated as lastupdate,
	datediff(day,sp.last_updated,getdate())as lastupdateday,
	sp.rows as 'rows',
	sp.modification_counter as ModificationsSinceLastUpdate
from sys.stats as s
join sys.tables t
on s.object_id=t.object_id
cross apply sys.dm_db_stats_properties(s.object_id,s.stats_id) as sp
order by sp.modification_counter desc

--Update statistics on a specific index
update statistics sales.Customers PK_customers
--Update statistics on a specific table
update statistics sales.Customers
--Update statistics on all tables in the database
exec sp_updatestats
