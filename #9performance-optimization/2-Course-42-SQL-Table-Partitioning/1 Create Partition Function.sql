create partition function PartitionByYear (DATE)
AS Range left for values ('2023-12-31','2024-12-31','2025-12-31')

--query lists all existing partition function 
select name,
       function_id,
       type,
       type_desc,
       boundary_value_on_right
from sys.partition_functions      
       