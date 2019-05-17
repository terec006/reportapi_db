CREATE PROCEDURE [dbo].[GetRiskReportsByPolicyId]
	@PolicyId uniqueidentifier
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
	WHERE [PolicyId] = @PolicyId;
END