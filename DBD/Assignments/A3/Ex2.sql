USE FlightDB;
GO

/*CREATE FUNCTION dbo.TRIM(@string VARCHAR(MAX))
RETURNS VARCHAR(MAX)
BEGIN
RETURN LTRIM(RTRIM(@string))
END
GO*/

WITH Reaches([From], [to], Legs, Airports, Dept, Arri, TravelTime) AS
(
	(SELECT [From], [To], 1 AS Legs, CAST(CONCAT([From], ' > ', [To]) as nvarchar(max)) as Airports, departs, arrives, (arrives-departs) FROM Flights)
	UNION ALL
	(
		
		SELECT 
			R1.[From],
			R2.[To],
			R1.Legs +1, Concat(R1.Airports,' > ', R2.[To]),
			r1.Dept, r2.arrives, -- r1.Dept to get the initial department time, r.arrives should override with new arrival time each iteration... in theory
			R1.TravelTime + (R2.arrives - R2.departs)  -- Not botherd to do actual time calculation, just the jist here
		FROM Reaches R1, Flights R2
		WHERE R1.[To] = R2.[From]
	)
)
SELECT * FROM Reaches ORDER BY Legs