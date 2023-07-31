/*
UNION, UNION ALL
*/

--CREATE TABLE DatabasePegawai
--(PegawaiID int, 
--NamaAwal varchar(50),
--NamaAkhir varchar (50),
--Usia int, 
--JenisKelamin varchar(50),
--)

--INSERT INTO DatabasePegawai VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

--SELECT *
--FROM SQLTutorial.dbo.DemografiPegawai

--SELECT *
--FROM SQLTutorial.dbo.GajiPegawai

--SELECT *
--FROM SQLTutorial.dbo.DatabasePegawai

--SELECT *
--FROM SQLTutorial.dbo.DemografiPegawai
--FULL OUTER JOIN SQLTutorial.dbo.DatabasePegawai
--	ON DemografiPegawai.PegawaiID = DatabasePegawai.PegawaiID

--SELECT *				-- data yang sama hanya ditampilkan sekali
--FROM SQLTutorial.dbo.DemografiPegawai
--UNION					-- digunakan UNION untuk menggabungkan kedua tabel
--SELECT *				-- syarat kedua tabel harus punya kolom yang sama
--FROM SQLTutorial.dbo.DatabasePegawai

--SELECT *				-- data yang sama tetap ditampilkan 
--FROM SQLTutorial.dbo.DemografiPegawai
--UNION ALL			 	-- UNION ALL untuk menggabungkan seluruh data kedua tabel
--SELECT *				-- syarat kedua tabel harus punya kolom yang sama
--FROM SQLTutorial.dbo.DatabasePegawai
--ORDER BY PegawaiID

--SELECT PegawaiID, NamaAwal, Usia	-- int, varchar, int		
--FROM SQLTutorial.dbo.DemografiPegawai
--UNION								-- tipe kolom yang digabungkan harus sama 
--SELECT PegawaiID, Jabatan, Gaji		-- int, varchar, int		
--FROM SQLTutorial.dbo.GajiPegawai
--ORDER BY PegawaiID