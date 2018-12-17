CREATE TABLE [dbo].[DimTime] (
    [TimeKey]      INT       IDENTITY (1, 1) NOT NULL,
    [Time]         CHAR (8)  NOT NULL,
    [Hour]         CHAR (2)  NOT NULL,
    [MilitaryHour] CHAR (2)  NOT NULL,
    [Minute]       CHAR (2)  NOT NULL,
    [Second]       CHAR (2)  NOT NULL,
    [AmPm]         CHAR (2)  NOT NULL,
    [StandardTime] CHAR (11) NULL,
    CONSTRAINT [PK_DimTime] PRIMARY KEY CLUSTERED ([TimeKey] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IDX_DimTime_Time]
    ON [dbo].[DimTime]([Time] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimTime_Hour]
    ON [dbo].[DimTime]([Hour] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimTime_MilitaryHour]
    ON [dbo].[DimTime]([MilitaryHour] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimTime_Minute]
    ON [dbo].[DimTime]([Minute] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimTime_Second]
    ON [dbo].[DimTime]([Second] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimTime_AmPm]
    ON [dbo].[DimTime]([AmPm] ASC) WITH (FILLFACTOR = 90);


GO
CREATE NONCLUSTERED INDEX [IDX_DimTime_StandardTime]
    ON [dbo].[DimTime]([StandardTime] ASC) WITH (FILLFACTOR = 90);

