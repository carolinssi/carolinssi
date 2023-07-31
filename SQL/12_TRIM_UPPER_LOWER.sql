/*
STRINGS function - TRIM, LTRIM , RTRIM, Replace, Substring, Upper, Lower
*/

--Drop Table ErrorPegawai;

--CREATE TABLE ErrorPegawai (
--PegawaiID  varchar(50),
--NamaAwal varchar(50), 
--NamaAkhir varchar(50)
--)

--INSERT INTO ErrorPegawai VALUES
--('1001', 'Jimbo', 'Halbert'),
--('1002', 'Pamela', 'Beasely'),
--('1005', 'TOby', 'Flenderson - Fired')

--SELECT *
--FROM ErrorPegawai

--UPDATE ErrorPegawai
--SET NamaAwal = 'TOby'
--WHERE PegawaiID = '1005'

--UPDATE ErrorPegawai
--SET PegawaiID = ' 1002'
--WHERE NamaAwal = 'Pamela' AND NamaAkhir = 'Beasely'

--SELECT *
--FROM ErrorPegawai

---- Using TRIM, LTRIM, RTRIM, 
--SELECT PegawaiID, TRIM(PegawaiID)AS IDTRIM  --men-trim pada sisi kiri dan kanan
--FROM ErrorPegawai

--SELECT PegawaiID, LTRIM(PegawaiID)AS LTRIM   -- hanya mentrim di sisi kiri
--FROM ErrorPegawai

--SELECT PegawaiID, RTRIM(PegawaiID)AS RTRIM    -- hanya mentrim di sisi kanan
--FROM ErrorPegawai


---- Using Replace 
--SELECT NamaAkhir, REPLACE (NamaAkhir, '- Fired','') AS NamaAkhirFixed
--FROM ErrorPegawai

---- Using Substring 
--SELECT SUBSTRING(NamaAwal,1,3)
--FROM ErrorPegawai

--SELECT SUBSTRING(NamaAwal,3,3)
--FROM ErrorPegawai

--SELECT err.NamaAwal, dem.NamaAwal 
--FROM SQLTutorial..DemografiPegawai AS dem
--JOIN ErrorPegawai AS err
--	ON dem.NamaAwal = err.NamaAwal

--SELECT SUBSTRING(err.NamaAwal,1,3), SUBSTRING(dem.NamaAwal,1,3)   -- mengambil string NamaAwal kata pertama, sebanyak 3 huruf
--FROM SQLTutorial..DemografiPegawai AS dem
--JOIN ErrorPegawai AS err
--	ON SUBSTRING(err.NamaAwal,1,3) = SUBSTRING(dem.NamaAwal,1,3)

--SELECT err.NamaAwal, dem.NamaAwal
--FROM SQLTutorial..DemografiPegawai AS dem
--FULL OUTER JOIN ErrorPegawai AS err
--	ON dem.PegawaiID = err.PegawaiID

--SELECT err.NamaAwal, SUBSTRING(err.NamaAwal,1,3) AS tigaHurufPertama, dem. NamaAwal, SUBSTRING(dem.NamaAwal,1,3) AS tigaHurufPertama
--FROM SQLTutorial..DemografiPegawai AS dem
--JOIN ErrorPegawai AS err
--	ON SUBSTRING(err.NamaAwal,1,3) = SUBSTRING(dem.NamaAwal,1,3)

--/* we can do this command to execute like 
--- gender
--- last name
--- age
--- date of birth
---etc.

--*/

----Using UPPER and LOWER
--SELECT NamaAwal, LOWER(NamaAwal) AS NonKapital
--FROM ErrorPegawai

--SELECT NamaAwal, UPPER(NamaAwal) AS Kapital
--FROM ErrorPegawai



