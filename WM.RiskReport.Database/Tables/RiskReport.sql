CREATE TABLE [dbo].[RiskReport]
(
	[RiskReportId] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY, 
    [PolicyId] UNIQUEIDENTIFIER NOT NULL, 
    [ReportType] TINYINT NOT NULL, 
    [VendorType] TINYINT NOT NULL, 
    [StorageType] TINYINT NOT NULL, 
	[VendorPostDate] DATETIME2 NULL, 
	[RiskReportRunAt] DATETIME2 NULL, 
    [CreatedAt] DATETIME2 NOT NULL, 
    [CreatedBy] NVARCHAR(50) NULL, 
    [UpdatedAt] DATETIME2 NOT NULL, 
    [UpdatedBy] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_RiskReport_ToRiskReportType] FOREIGN KEY ([ReportType]) REFERENCES [RiskReportType]([TypeKey]), 
    CONSTRAINT [FK_RiskReport_ToRiskReportVendorType] FOREIGN KEY ([VendorType]) REFERENCES [RiskReportVendorType]([TypeKey]),
	CONSTRAINT [FK_RiskReport_ToRiskReportStorageType] FOREIGN KEY ([StorageType]) REFERENCES [RiskReportStorageType]([TypeKey])
)  

GO

CREATE INDEX [IX_RiskReport_PolicyId] ON [dbo].[RiskReport] ([PolicyId])
