SET NOCOUNT ON;

GO

MERGE INTO [RiskReportType] AS Target
USING (VALUES
	(1,'RoofCondition'),
	(2,'NationalCreditFile'), 
	(3,'PersonalProperty')
) AS Source ([TypeKey],[TypeName])
ON (Target.[TypeKey] = Source.[TypeKey])		
WHEN MATCHED AND (Target.[TypeName] <> Source.[TypeName])
THEN UPDATE SET [TypeName] = Source.[TypeName]
WHEN NOT MATCHED BY TARGET
THEN INSERT ([TypeKey],[TypeName])
VALUES (Source.[TypeKey],Source.[TypeName])
WHEN NOT MATCHED BY SOURCE THEN 
DELETE;
GO 

MERGE INTO [RiskReportVendorType] AS Target
USING (VALUES
	(1,'CapeAnalytics'),
	(2,'LexisNexis'),  
	(3,'RiskMeter')
) AS Source ([TypeKey],[TypeName])
ON (Target.[TypeKey] = Source.[TypeKey])		
WHEN MATCHED AND (Target.[TypeName] <> Source.[TypeName])
THEN UPDATE SET [TypeName] = Source.[TypeName]
WHEN NOT MATCHED BY TARGET
THEN INSERT ([TypeKey],[TypeName])
VALUES (Source.[TypeKey],Source.[TypeName])
WHEN NOT MATCHED BY SOURCE THEN 
DELETE;
GO 
	

MERGE INTO [RiskReportStorageType] AS Target
USING (VALUES
	(1,'RiskReportJsonData')
) AS Source ([TypeKey],[TypeName])
ON (Target.[TypeKey] = Source.[TypeKey])		
WHEN MATCHED AND (Target.[TypeName] <> Source.[TypeName])
THEN UPDATE SET [TypeName] = Source.[TypeName]
WHEN NOT MATCHED BY TARGET
THEN INSERT ([TypeKey],[TypeName])
VALUES (Source.[TypeKey],Source.[TypeName])
WHEN NOT MATCHED BY SOURCE THEN 
DELETE;
GO 