/* 
UPDATE/DELETE DATA
HATI-HATI menggunakan perintah update dan delete/ karena perintah 
ini tidak dapat di reversed
*/

SELECT *
FROM SQLTutorial.dbo.DemografiPegawai

UPDATE SQLTutorial.dbo.DemografiPegawai
SET PegawaiID = 9999, Usia = 31, JenisKelamin = 'Female'
WHERE NamaAwal = 'Holly' AND NamaAkhir = 'Flax'

