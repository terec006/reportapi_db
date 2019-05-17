CREATE PROCEDURE [dbo].[GetRiskReportJsonDataByRiskReportId]
	@RiskReportId uniqueidentifier
AS
BEGIN
	SELECT [RiskReportId],
	[JsonData],
    [CreatedAt],
    [CreatedBy],
    [UpdatedAt],
    [UpdatedBy]
	FROM 
	dbo.[RiskReportJsonData] 
	WHERE [RiskReportId] = @RiskReportId;
END