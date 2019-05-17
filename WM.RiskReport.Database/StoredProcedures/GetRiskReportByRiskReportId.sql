CREATE PROCEDURE [dbo].[GetRiskReportByRiskReportId]
	@RiskReportId uniqueidentifier
AS
BEGIN
	SELECT [RiskReportId],
    [PolicyId],
    [ReportType],
    [VendorType],
    [StorageType],
	[VendorPostDate],
	[RiskReportRunAt],
    [CreatedAt],
    [CreatedBy],
    [UpdatedAt],
    [UpdatedBy]
	FROM 
	dbo.[RiskReport] 
	WHERE [RiskReportId] = @RiskReportId;
END