/*
CTEs
Hanya berhasil jika Perintah II tepat berada di bawah Perintah I
Perintah I dan Perintah II harus di-EXECUTE bersamaan 
*/


-- KASUS Pertama dan Kedua tidak bisa di-EXECUTE Bersamaan
-- Harus di-EXECUTE satu-satu
--WITH CTE_Employee AS					--Perintah I
--(SELECT NamaAwal, NamaAkhir, JenisKelamin, Gaji
--, COUNT(JenisKelamin) OVER (PARTITION BY JenisKelamin) AS TotalGender
--, AVG(Gaji) OVER (PARTITION BY JenisKelamin) AS AvgSalary
--FROM SQLTutorial..DemografiPegawai AS emp
--JOIN SQLTutorial..GajiPegawai AS sal
--	ON emp.PegawaiID = sal.PegawaiID
--WHERE Gaji > '45000'
--)

--SELECT NamaAwal, AvgSalary				---Perintah II
--FROM CTE_Employee

--KASUS KEDUA 
WITH CTE_Employee AS						--Perintah I
(SELECT NamaAwal, NamaAkhir, JenisKelamin, Gaji
, COUNT(JenisKelamin) OVER (PARTITION BY JenisKelamin) AS TotalGender
, AVG(Gaji) OVER (PARTITION BY JenisKelamin) AS AvgSalary
FROM SQLTutorial..DemografiPegawai AS emp
JOIN SQLTutorial..GajiPegawai AS sal
	ON emp.PegawaiID = sal.PegawaiID
WHERE Gaji > '45000'
)

SELECT *									--Perintah II
FROM CTE_Employee

SELECT *	
FROM SQLTutorial..DemografiPegawai AS emp
JOIN SQLTutorial..GajiPegawai AS sal
	ON emp.PegawaiID = sal.PegawaiID