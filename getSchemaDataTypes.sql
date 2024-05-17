SELECT
    s.name AS SchemaName,
    t.name AS TableName,
    c.name AS ColumnName,
    y.name AS DataType
FROM
    sys.tables t
INNER JOIN 
    sys.schemas s ON t.schema_id = s.schema_id
INNER JOIN 
    sys.columns c ON t.object_id = c.object_id
INNER JOIN 
    sys.types y ON c.system_type_id = y.system_type_id
WHERE
    t.type = 'U' -- Only User Tables (you can adjust this condition if needed)
ORDER BY
    s.name, t.name, c.column_id;