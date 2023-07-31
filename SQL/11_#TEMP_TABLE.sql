/*
TEMP TABLES
*/


--CREATE TABLE #temp_Pegawai (
--PegawaiID int, 
--Jabatan varchar(100),
--Gaji int
--)

--SELECT *
--FROM #temp_Pegawai

--INSERT INTO #temp_Pegawai VALUES (
--'1001', 'HR', '45000'
--)

--INSERT INTO #temp_Pegawai
--SELECT*
--FROM SQLTutorial..GajiPegawai


--SELECT*
--FROM SQLTutorial..GajiPegawai

DROP TABLE IF EXISTS #temp_Pegawai2	--Menghapus tabel temp_Pegawai2 jika sudah ada sebelumnya 
CREATE TABLE #temp_Pegawai2 (
Jabatan varchar (50),
PegawaiJob int,
AvgUsia int, 
AvgGaji int)

INSERT INTO #temp_Pegawai2
SELECT Jabatan, COUNT(Jabatan), Avg(Usia),Avg(Gaji)
FROM SQLTutorial..DemografiPegawai AS emp
JOIN SQLTutorial..GajiPegawai AS sal
	ON emp.PegawaiID = sal.PegawaiID
group by Jabatan

SELECT *
FROM #temp_Pegawai2

