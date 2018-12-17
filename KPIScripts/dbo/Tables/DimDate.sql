CREATE TABLE [dbo].[DimDate] (
    [DateKey]      INT          NOT NULL,
    [Date]         DATETIME     NOT NULL,
    [Day]          CHAR (2)     NOT NULL,
    [DaySuffix]    VARCHAR (4)  NOT NULL,
    [DayOfWeek]    VARCHAR (9)  NOT NULL,
    [DOWInMonth]   TINYINT      NOT NULL,
    [DayOfYear]    INT          NOT NULL,
    [WeekOfYear]   TINYINT      NOT NULL,
    [WeekOfMonth]  TINYINT      NOT NULL,
    [Month]        CHAR (2)     NOT NULL,
    [MonthName]    VARCHAR (9)  NOT NULL,
    [Quarter]      TINYINT      NOT NULL,
    [QuarterName]  VARCHAR (6)  NOT NULL,
    [Year]         CHAR (4)     NOT NULL,
    [StandardDate] VARCHAR (10) NULL,
    [HolidayText]  VARCHAR (50) NULL,
    CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED ([DateKey] ASC) WITH (FILLFACTOR = 90)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IDX_DimDate_Date]
    ON [dbo].[DimDate]([Date] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_Day]
    ON [dbo].[DimDate]([Day] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_DayOfWeek]
    ON [dbo].[DimDate]([DayOfWeek] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_DOWInMonth]
    ON [dbo].[DimDate]([DOWInMonth] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_DayOfYear]
    ON [dbo].[DimDate]([DayOfYear] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_WeekOfYear]
    ON [dbo].[DimDate]([WeekOfYear] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_WeekOfMonth]
    ON [dbo].[DimDate]([WeekOfMonth] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_Month]
    ON [dbo].[DimDate]([Month] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_MonthName]
    ON [dbo].[DimDate]([MonthName] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_Quarter]
    ON [dbo].[DimDate]([Quarter] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_QuarterName]
    ON [dbo].[DimDate]([QuarterName] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimDate_Year]
    ON [dbo].[DimDate]([Year] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimTime_HolidayText]
    ON [dbo].[DimDate]([HolidayText] ASC) WITH (FILLFACTOR = 90);

