-- Mark Ruzinov 4187
GO
CREATE PROCEDURE proc1
@VehicleID as numeric(2,0)
AS
SELECT vehicle, a.RouteId, StopId, departure FROM Schedule a
INNER JOIN Bus b on a.id = b.ScheduleId
INNER JOIN RouteStop c on a.RouteId = c.RouteId
WHERE vehicle = @VehicleID
GROUP BY a.RouteId, vehicle, StopId, departure;
GO
