SELECT NamaAwal, NamaAkhir, JenisKelamin, Gaji
, COUNT(JenisKelamin) OVER (PARTITION BY JenisKelamin) AS TotalGender
, AVG(Gaji) OVER (PARTITION BY JenisKelamin) AS AvgSalary
FROM SQLTutorial..DemografiPegawai AS emp
JOIN SQLTutorial..GajiPegawai AS sal
	ON emp.PegawaiID = sal.PegawaiID

SELECT NamaAwal, NamaAkhir, JenisKelamin, Gaji
, COUNT(JenisKelamin) OVER (PARTITION BY JenisKelamin) AS TotalGender
--, AVG(Gaji) OVER (PARTITION BY JenisKelamin) AS AvgSalary
FROM SQLTutorial..DemografiPegawai AS emp
JOIN SQLTutorial..GajiPegawai AS sal
	ON emp.PegawaiID = sal.PegawaiID


SELECT *
FROM SQLTutorial..DemografiPegawai AS emp
JOIN SQLTutorial..GajiPegawai AS sal
	ON emp.PegawaiID = sal.PegawaiID