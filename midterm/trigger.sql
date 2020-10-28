-- Mark Ruzinov 4187
CREATE TRIGGER [dbo].[trig1]
   ON  [dbo].[Bus]
   AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;

DECLARE @BusID int
	DECLARE @Schedule int
	SELECT	@BusID = i.vehicle,
			@Schedule = i.ScheduleId
	FROM inserted i;

	INSERT INTO [dbo].[driverStat] (DESC_STAT, DATE_STAT)
	VALUES ('A new vehicle is inserted with ID = ' + CAST(@BusID AS varchar(18)) + ', which will go on the route = ' + CAST(@Schedule AS varchar(18)), GETDATE());
END
