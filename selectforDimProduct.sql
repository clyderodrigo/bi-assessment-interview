SELECT
    P.ProductID as ProductKey,
    P.Name as ProductName,
    ISNULL(PC.Name,'Misc') as ProductCategoryName,
    ISNULL(PS.Name,'Misc') as ProductSubcategoryName
FROM Production.Product P
LEFT JOIN Production.ProductSubcategory PS ON P.ProductSubcategoryID = PS.ProductSubcategoryID
LEFT JOIN Production.ProductCategory PC ON PS.ProductCategoryID = PC.ProductCategoryID