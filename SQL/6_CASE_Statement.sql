/*
CASE STATEMENT
*/

--SELECT NamaAwal, NamaAkhir, Usia
--FROM SQLTutorial.dbo.DemografiPegawai
--WHERE Usia IS NOT NULL
--ORDER BY Usia

--SELECT NamaAwal, NamaAkhir, Usia,
--CASE 
--	WHEN Usia > 30 THEN 'Old'
--	ELSE 'Young'
--END
--FROM SQLTutorial.dbo.DemografiPegawai
--WHERE Usia IS NOT NULL
--ORDER BY Usia

--SELECT NamaAwal, NamaAkhir, Usia,
--CASE 
--	WHEN Usia > 30 THEN 'Old'
--	WHEN Usia BETWEEN 27 AND 30 THEN 'Young'
--	WHEN Usia = 38 THEN 'Tak Berpengaruh'
--	ELSE 'Younger'
--END
--FROM SQLTutorial.dbo.DemografiPegawai
--WHERE Usia IS NOT NULL
--ORDER BY Usia

--SELECT NamaAwal, NamaAkhir, Usia,
--CASE								-- Urutan pada case menentukan perintah yang diprose lebih dahulu
--	WHEN Usia = 38 THEN 'KOK BISA?'
--	WHEN Usia > 30 THEN 'Old'
--	WHEN Usia BETWEEN 27 AND 30 THEN 'Young'
--	ELSE 'Younger'
--END
--FROM SQLTutorial.dbo.DemografiPegawai
--WHERE Usia IS NOT NULL
--ORDER BY Usia DESC

--SELECT NamaAwal,NamaAkhir,Jabatan, Gaji
--FROM SQLTutorial.dbo.DemografiPegawai
--JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID
--ORDER BY Gaji DESC

--SELECT NamaAwal,NamaAkhir,Jabatan, Gaji,
--CASE
--	WHEN Jabatan = 'Salesman' THEN Gaji+.5
--	WHEN Jabatan = 'Accountant' THEN Gaji+.99
--	ELSE Gaji+.66
--END AS NominalGaji
--FROM SQLTutorial.dbo.DemografiPegawai
--JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID
--ORDER BY Gaji DESC