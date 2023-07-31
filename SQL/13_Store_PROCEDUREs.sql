/*
STORED PROCEDUREs
*/

--CREATE PROCEDURE TEST
--AS
--SELECT *
--FROM DemografiPegawai

EXEC TEST		--menampilkan seluruh data

CREATE PROCEDURE Temp_Pegawai
AS
Create table #temp_pegawai (
Jabatan varchar (100),
JabatanPerJob int, 
AvgUsia int, 
AvgGaji int
)

Insert into #temp_pegawai
SELECT Jabatan, COUNT(Jabatan), Avg(Usia), Avg(Gaji)
FROM SQLTutorial..DemografiPegawai emp
JOIN SQLTutorial..GajiPegawai sal
	ON emp.PegawaiID = sal.PegawaiID
GROUP BY Jabatan

Select * 
From #temp_pegawai

EXEC Temp_Pegawai @Jabatan = 'Salesman'

