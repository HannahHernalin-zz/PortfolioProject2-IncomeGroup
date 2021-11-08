--To check the data imported is accurate.
SELECT *
FROM PortfolioProject..WDCountry$

--To calculate the number of distinct IncomeGroup.
SELECT COUNT(DISTINCT IncomeGroup)
FROM PortfolioProject..WDCountry$

--To calculate the total number of IncomeGroup.
SELECT COUNT(IncomeGroup)
FROM PortfolioProject..WDCountry$


--To calculate the total number of HighIncomeGroup.
SELECT 
  COUNT(IncomeGroup) AS HighIncomeGroupCount
  --COUNT(DISTINCT IncomeGroup, 'Upper middle income') + COUNT(DISTINCT IncomeGroup, 'Lower middle income') AS MiddleIncomeGroupCount
FROM PortfolioProject..WDCountry$
WHERE
 IncomeGroup = 'High income'

--To calculate the total number of MiddleIncomeGroup.
 SELECT 
  COUNT(IncomeGroup) AS MiddleIncomeGroupCount
  --COUNT(DISTINCT IncomeGroup, 'Upper middle income') + COUNT(DISTINCT IncomeGroup, 'Lower middle income') AS MiddleIncomeGroupCount
FROM PortfolioProject..WDCountry$
WHERE
 IncomeGroup = 'Upper middle income' 
 OR IncomeGroup = 'Lower middle income'

--To calculate the total number of LowIncomeGroup.
SELECT 
  COUNT(IncomeGroup) AS LowIncomeGroupCount
  --COUNT(DISTINCT IncomeGroup, 'Upper middle income') + COUNT(DISTINCT IncomeGroup, 'Lower middle income') AS MiddleIncomeGroupCount
FROM PortfolioProject..WDCountry$
WHERE
 IncomeGroup = 'Low income' 


--To calculate the total numbers of High, Middle, and Low Income Groups.
SELECT
  COUNT(IncomeGroup) AS TotalIncomeGroup,
  COUNT(CASE WHEN IncomeGroup LIKE '%High income%' THEN 1 END) AS HighIncomeCount,
  COUNT(CASE WHEN IncomeGroup LIKE '%middle income%' THEN 1 END) AS MiddleIncomeCount,
  COUNT(CASE WHEN IncomeGroup LIKE '%low income%' THEN 1 END) AS LowIncomeCount
FROM 
  PortfolioProject..WDCountry$
