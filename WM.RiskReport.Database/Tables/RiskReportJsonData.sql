CREATE TABLE [dbo].[RiskReportJsonData]
(
	[RiskReportId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [JsonData] NVARCHAR(MAX) NOT NULL, 
    [CreatedAt] DATETIME2 NOT NULL, 
    [CreatedBy] NVARCHAR(50) NULL, 
    [UpdatedAt] DATETIME2 NOT NULL, 
    [UpdatedBy] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_RiskReportJsonData_ToRiskReport] FOREIGN KEY ([RiskReportId]) REFERENCES [RiskReport]([RiskReportId])
)
