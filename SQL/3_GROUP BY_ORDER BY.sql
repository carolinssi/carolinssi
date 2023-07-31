/*
GROUP BY, ORDER BY
*/

--SELECT *
--FROM DemografiPegawai 

--SELECT DISTINCT(JenisKelamin)
--FROM DemografiPegawai 


--SELECT JenisKelamin
--FROM DemografiPegawai 
--GROUP BY JenisKelamin

--SELECT JenisKelamin, COUNT(JenisKelamin)
--FROM DemografiPegawai 
--GROUP BY JenisKelamin

--SELECT JenisKelamin, Usia, COUNT(JenisKelamin)
--FROM DemografiPegawai 
--GROUP BY JenisKelamin, Usia

--SELECT JenisKelamin, COUNT(JenisKelamin) AS JumlahGender
--FROM DemografiPegawai
--WHERE Usia > 31
--GROUP BY JenisKelamin
--ORDER By JumlahGender --otomatis mengurutkan dari terkecil

--SELECT JenisKelamin, COUNT(JenisKelamin) AS JumlahGender
--FROM DemografiPegawai
--WHERE Usia > 31
--GROUP BY JenisKelamin
--ORDER By JumlahGender DESC -- mengurutkan ke terkecil 

--SELECT *
--FROM DemografiPegawai 
--ORDER BY Usia DESC, JenisKelamin DESC

--SELECT *
--FROM DemografiPegawai 
--ORDER BY 4, 5 DESC  -- nomor dapat merepresentasikan nomor kolom