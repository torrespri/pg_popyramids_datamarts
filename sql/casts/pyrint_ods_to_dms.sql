CREATE CAST (ods.pyrint AS dms.pyrint) 
WITH FUNCTION dms.pyrint_ods_to_dms(ods.pyrint);
