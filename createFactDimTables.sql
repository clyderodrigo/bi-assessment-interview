CREATE TABLE FactSales (
    SalesOrderDetailKey INT PRIMARY KEY,
    SalesOrderKey INT NOT NULL,
    OrderDateKey DATE NOT NULL, 
    OrderDueDateKey DATE NOT NULL, 
    OrderShipDateKey DATE NOT NULL, 
    ProductKey INT NOT NULL,
    ProductQty INT NOT NULL,
    ProductUnitPrice MONEY NOT NULL,
    ProductUnitDiscount MONEY NOT NULL,
    ProductTotalAmount MONEY NOT NULL,
    OrderSubTotal MONEY NOT NULL,
    OrderTaxCharges MONEY NOT NULL,
    OrderFreightCharges MONEY NOT NULL,
    OrderTotalDue MONEY NOT NULL,
    TerritoryKey INT NOT NULL   
);

CREATE TABLE DimProduct (
    ProductKey INT PRIMARY KEY, 
    ProductName NVARCHAR(100),
    ProductCategoryName NVARCHAR(100),
    ProductSubcategoryName NVARCHAR(100)
);

CREATE TABLE DimTerritory (
    TerritoryKey INT PRIMARY KEY,
    TerritoryName NVARCHAR(100)
);

-- Foreign key constraints
ALTER TABLE FactSales
ADD CONSTRAINT FK_ProductKey FOREIGN KEY (ProductKey) REFERENCES DimProduct(ProductKey);

ALTER TABLE FactSales
ADD CONSTRAINT FK_TerritoryKey FOREIGN KEY (TerritoryKey) REFERENCES DimTerritory(TerritoryKey);
