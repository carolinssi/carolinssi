/* 
ALIASING
*/

--SELECT NamaAwal AS FNAME
--FROM SQLTutorial.dbo.DatabasePegawai

----Perintah diatas juga bisa dilakukan tanpa AS
--SELECT NamaAwal FNAME
--FROM SQLTutorial.dbo.DatabasePegawai

--SELECT NamaAwal + ' ' + NamaAkhir AS FullName
--FROM [SQLTutorial].[dbo].[DemografiPegawai]

--SELECT AVG(Usia) AS AverageUsia
--FROM [SQLTutorial].[dbo].[DemografiPegawai]

----Untuk mempersingkat penulisan
--SELECT Demo.PegawaiID
--FROM [SQLTutorial].[dbo].[DemografiPegawai] AS Demo

--SELECT Demo.PegawaiID, Gaj.Gaji
--FROM [SQLTutorial].[dbo].[DemografiPegawai] AS Demo
--JOIN [SQLTutorial].[dbo].[GajiPegawai] AS Gaj
--	ON Demo.PegawaiID = Gaj.PegawaiID

SELECT Demo.PegawaiID, Demo.NamaAwal, Demo.NamaAkhir, 
Sal.Jabatan, Ware.Usia
FROM [SQLTutorial].[dbo].[DemografiPegawai] AS Demo
LEFT JOIN [SQLTutorial].[dbo].[GajiPegawai] AS Sal
	ON Demo.PegawaiID = Sal.PegawaiID
LEFT JOIN [SQLTutorial].[dbo].[DatabasePegawai] AS Ware
	ON Demo.PegawaiID = Ware.PegawaiID