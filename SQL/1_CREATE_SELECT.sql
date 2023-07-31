--CREATE TABLE DemografiPegawai
--(PegawaiID int, 
--NamaAwal varchar(50),
--NamaAkhir varchar(50),
--Usia int, 
--JenisKelamin varchar(50)
--)

--CREATE TABLE GajiPegawai
--(PegawaiID int, 
--Jabatan varchar(50),
--Gaji int
--)

--INSERT INTO DemografiPegawai VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

--INSERT INTO GajiPegawai VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)

/*
SELECT STATEMENT 
*, Top, Distinct, Count, Max, Min, Avg
*/

--SELECT *
--FROM DemografiPegawai

--SELECT NamaAwal
--FROM DemografiPegawai

--SELECT TOP 5*
--FROM DemografiPegawai

--SELECT DISTINCT(JenisKelamin)
--FROM DemografiPegawai

--SELECT COUNT(NamaAkhir)
--FROM DemografiPegawai

--SELECT COUNT(NamaAkhir) AS JumlahNamaAkhir
--FROM DemografiPegawai

--SELECT *
--FROM GajiPegawai

--SELECT MAX(Gaji)
--FROM GajiPegawai

--SELECT AVG(Gaji)
--FROM GajiPegawai

--SELECT *
--FROM SQLTutorial.dbo.DemografiPegawai