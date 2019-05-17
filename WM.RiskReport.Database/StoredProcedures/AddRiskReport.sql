CREATE PROCEDURE [dbo].[AddRiskReport]
	@RiskReportId uniqueidentifier,
	@PolicyId uniqueidentifier,
	@ReportType tinyint,
	@VendorType tinyint,
	@StorageType tinyint,
	@VendorPostDate datetime2 = NULL,
	@RiskReportRunAt datetime2,
	@CreatedBy nvarchar(100) = NULL
AS
BEGIN
	INSERT INTO dbo.[RiskReport] (
	[RiskReportId],
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
	) 
	VALUES (
	@RiskReportId,
	@PolicyId,
	@ReportType,
	@VendorType,
	@StorageType,
	@VendorPostDate,
	@RiskReportRunAt,
	GETDATE(),
	ISNULL(@CreatedBy,USER),
	GETDATE(),
	ISNULL(@CreatedBy,USER)
	);

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