SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [Production].[vProductAndDescription]
AS
SELECT p.[ProductID],
       p.[Name],
       pm.[Name] AS [ProductModel],
       pmx.[CultureID],
       pd.[Description]
FROM   [Production].[Product] AS p
       INNER JOIN
       [Production].[ProductModel] AS pm
       ON p.[ProductModelID] = pm.[ProductModelID]
       INNER JOIN
       [Production].[ProductModelProductDescriptionCulture] AS pmx
       ON pm.[ProductModelID] = pmx.[ProductModelID]
       INNER JOIN
       [Production].[ProductDescription] AS pd
       ON pmx.[ProductDescriptionID] = pd.[ProductDescriptionID];


GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product names and descriptions. Product descriptions are provided in multiple languages.' , @level0type=N'SCHEMA',@level0name=N'Production', @level1type=N'VIEW',@level1name=N'vProductAndDescription'