-- Mark Ruzinov 4187
-- arbitrary route ID chosen since the exact number wasn't specified.
CREATE VIEW RouteInfoView AS
SELECT a.id AS RouteStop, RouteId, StopId, Name AS StopName, Terminus
FROM dbo.RouteStop a
INNER JOIN dbo.Stop b on a.StopId = b.id
WHERE (RouteId = 3);
