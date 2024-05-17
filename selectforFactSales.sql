SELECT
SD.SalesOrderDetailID AS SalesOrderDetailKey,
SH.SalesOrderID AS SalesOrderKey,
CONVERT(DATE,SH.OrderDate) AS OrderDateKey,
CONVERT(DATE,SH.DueDate) AS OrderDueDateKey,
CONVERT(DATE,SH.ShipDate) AS OrderShipDateKey,
SD.ProductID AS ProductKey,
SD.OrderQty AS ProductQty,
SD.UnitPrice AS ProductUnitPrice,
SD.UnitPriceDiscount AS ProductUnitDiscount,
SD.LineTotal AS ProductTotalAmount,
SH.SubTotal AS OrderSubTotal,
SH.TaxAmt AS OrderTaxCharges,
SH.Freight AS OrderFreightCharges,
SH.TotalDue AS OrderTotalDue,
SH.TerritoryID AS TerritoryKey
FROM Sales.SalesOrderDetail SD
	LEFT JOIN Sales.SalesOrderHeader SH ON SD.SalesOrderID = SH.SalesOrderID