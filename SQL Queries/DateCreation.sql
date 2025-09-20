USE YoutubeSTG;
GO

CREATE PROCEDURE CreateDateDim
AS
BEGIN
    SET NOCOUNT ON;

    -- Drop table if it already exists
    IF OBJECT_ID('dbo.[Date]', 'U') IS NOT NULL
        DROP TABLE dbo.[Date];

    -- Declare date range variables
    DECLARE @StartDate DATE, @EndDate DATE;

    -- Get the absolute MIN and MAX from both [Order Date] and [Ship Date]
    SELECT
        @StartDate = MIN(MinDate),
        @EndDate = MAX(MaxDate)
    FROM (
        SELECT MIN([PublishDate]) AS MinDate, MAX([PublishDate]) AS MaxDate FROM dbo.VideosFact
        UNION ALL
        SELECT MIN([TrendDate]), MAX([TrendDate]) FROM dbo.VideosFact
    ) AS AllDates;

    -- Create the Date dimension table
    CREATE TABLE dbo.[Date] (
        DateID INT PRIMARY KEY,        -- e.g., 20240624
        [Date] DATE NOT NULL,
        [Day] INT NOT NULL,
        [Month] INT NOT NULL,
        [Year] INT NOT NULL
    );

    -- Loop from StartDate to EndDate and insert each date
    DECLARE @CurrentDate DATE = @StartDate;

    WHILE @CurrentDate <= @EndDate
    BEGIN
        INSERT INTO dbo.[Date] (DateID, [Date], [Day], [Month], [Year])
        VALUES (
            CONVERT(INT, FORMAT(@CurrentDate, 'yyyyMMdd')),
            @CurrentDate,
            DAY(@CurrentDate),
            MONTH(@CurrentDate),
            YEAR(@CurrentDate)
        );

        SET @CurrentDate = DATEADD(DAY, 1, @CurrentDate);
    END
END;


EXEC CreateDateDim;


