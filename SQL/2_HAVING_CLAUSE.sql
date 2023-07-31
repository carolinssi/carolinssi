/* 
HAVING CLAUSE
*/

--SELECT Jabatan, COUNT(Jabatan)
--FROM SQLTutorial.dbo.DemografiPegawai
--	JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID
--GROUP BY Jabatan

---- tidak berhasil dilakukan karena tidak diberi "Having Clause"
--SELECT Jabatan, COUNT(Jabatan)
--FROM SQLTutorial.dbo.DemografiPegawai
--	JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID
--WHERE COUNT(Jabatan) > 1
--GROUP BY Jabatan

---- tidak berhasil dilakukan karena Setelah HAVING ada GROUP
--SELECT Jabatan, COUNT(Jabatan)
--FROM SQLTutorial.dbo.DemografiPegawai
--	JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID
--HAVING COUNT(Jabatan) > 1
--GROUP BY Jabatan

---- berhasil dilakukan 
--SELECT Jabatan, COUNT(Jabatan)
--FROM SQLTutorial.dbo.DemografiPegawai
--	JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID
--GROUP BY Jabatan
--HAVING COUNT(Jabatan) > 1

--SELECT Jabatan, COUNT(Jabatan)
--FROM SQLTutorial.dbo.DemografiPegawai
--	JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID
--GROUP BY Jabatan
--HAVING COUNT(Jabatan) > 1

--SELECT Jabatan, COUNT(Jabatan), AVG(Gaji)
--FROM SQLTutorial.dbo.DemografiPegawai
--	JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID
--GROUP BY Jabatan

--SELECT Jabatan, AVG(Gaji)
--FROM SQLTutorial.dbo.DemografiPegawai
--	JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID
--GROUP BY Jabatan
--HAVING COUNT(Jabatan) > 1