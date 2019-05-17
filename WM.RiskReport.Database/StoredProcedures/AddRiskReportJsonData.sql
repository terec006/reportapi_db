CREATE PROCEDURE [dbo].[AddRiskReportJsonData]
	@RiskReportId uniqueidentifier,
	@JsonData nvarchar(MAX),
	@CreatedBy nvarchar(100) = NULL
AS
BEGIN
	INSERT INTO dbo.[RiskReportJsonData] (
	[RiskReportId],
    [JsonData],
    [CreatedAt],
    [CreatedBy],
    [UpdatedAt],
    [UpdatedBy]
	) 
	VALUES (
	@RiskReportId,
	@JsonData,
	GETDATE(),
	ISNULL(@CreatedBy,USER),
	GETDATE(),
	ISNULL(@CreatedBy,USER)
	);

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