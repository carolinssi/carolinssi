/*
PARTITION BY
*/

--SELECT *
--FROM SQLTutorial.dbo.DemografiPegawai

--SELECT * 
--FROM SQLTutorial.dbo.GajiPegawai

SELECT * 
FROM SQLTutorial.dbo.DemografiPegawai AS Dem
JOIN SQLTutorial.dbo.GajiPegawai AS Sal
	ON Dem.PegawaiID = Sal.PegawaiID

SELECT NamaAwal, NamaAkhir, JenisKelamin, Gaji
, COUNT(JenisKelamin) OVER (PARTITION BY JenisKelamin) AS TotalGender
FROM SQLTutorial.dbo.DemografiPegawai AS Dem
JOIN SQLTutorial.dbo.GajiPegawai AS Sal
	ON Dem.PegawaiID = Sal.PegawaiID

SELECT NamaAwal, NamaAkhir, JenisKelamin, Gaji, COUNT(JenisKelamin)
FROM SQLTutorial.dbo.DemografiPegawai AS Dem
JOIN SQLTutorial.dbo.GajiPegawai AS Sal
	ON Dem.PegawaiID = Sal.PegawaiID
GROUP BY NamaAwal, NamaAkhir, JenisKelamin, Gaji

SELECT JenisKelamin, COUNT(JenisKelamin)
FROM SQLTutorial.dbo.DemografiPegawai AS Dem
JOIN SQLTutorial.dbo.GajiPegawai AS Sal
	ON Dem.PegawaiID = Sal.PegawaiID
GROUP BY JenisKelamin