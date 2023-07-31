/* 
INNER JOINS, FULL/LEFT/RIGHT OUTER JOINS
*/

--INSERT INTO DemografiPegawai VALUES
--(1011, 'Ryan', 'Howard', 25, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, 'Male'),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--INSERT INTO GajiPegawai VALUES
--(1010, NULL, 47000),
--(NULL, 'Salesman', 43000)

-- -- Jika Menggunakan SQLTutorial
--SELECT * 
--FROM DemografiPegawai

--SELECT * 
--FROM GajiPegawai


/* 
Tabel DemografiPegawai dan GajiPegawai akan digabungkan 
Kedua tabel memiliki kolom yang sama yaitu kolom PegawaiID
Nantinya Kolom PegawaiID ini disebut sebagai KOLOM UNIK
Sebagai kunci untuk dapat menggabungkan beberapa tabel. 
*/

----Jika menggunakan "master"
--SELECT * 
--FROM SQLTutorial.dbo.DemografiPegawai

--SELECT * 
--FROM SQLTutorial.dbo.GajiPegawai

--SELECT *
--FROM SQLTutorial.dbo.DemografiPegawai
--INNER JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID

--SELECT *
--FROM SQLTutorial.dbo.DemografiPegawai
--FULL OUTER JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID

--SELECT *						-- LEFT merepresentasikan tabel yang pertama
--FROM SQLTutorial.dbo.DemografiPegawai
--LEFT OUTER JOIN SQLTutorial.dbo.GajiPegawai 
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID

--SELECT *						-- RIGHT merepresentasikan tabel yang kedua
--FROM SQLTutorial.dbo.DemografiPegawai
--RIGHT OUTER JOIN SQLTutorial.dbo.GajiPegawai 
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID


---- Tidak akan berhasil, karena ambiguitas, ada dua tabel yg punya kolom PegawaiID
--SELECT PegawaiID, NamaAwal, NamaAkhir, Jabatan, Gaji
--FROM SQLTutorial.dbo.DemografiPegawai
--RIGHT OUTER JOIN SQLTutorial.dbo.GajiPegawai 
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID

---- Yang Berhasil 
--SELECT DemografiPegawai.PegawaiID, NamaAwal, NamaAkhir, Jabatan, Gaji
--FROM SQLTutorial.dbo.DemografiPegawai
--INNER JOIN SQLTutorial.dbo.GajiPegawai 
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID

--SELECT DemografiPegawai.PegawaiID, NamaAwal, NamaAkhir, Jabatan, Gaji
--FROM SQLTutorial.dbo.DemografiPegawai
--RIGHT OUTER JOIN SQLTutorial.dbo.GajiPegawai 
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID

--SELECT GajiPegawai.PegawaiID, NamaAwal, NamaAkhir, Jabatan, Gaji
--FROM SQLTutorial.dbo.DemografiPegawai
--RIGHT OUTER JOIN SQLTutorial.dbo.GajiPegawai 
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID

--SELECT GajiPegawai.PegawaiID, NamaAwal, NamaAkhir, Jabatan, Gaji
--FROM SQLTutorial.dbo.DemografiPegawai
--LEFT OUTER JOIN SQLTutorial.dbo.GajiPegawai 
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID

--SELECT *
--FROM SQLTutorial.dbo.DemografiPegawai
--FULL OUTER JOIN SQLTutorial.dbo.GajiPegawai 
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID

--SELECT Jabatan, MAX(Gaji) AS GajiTerbesar
--FROM SQLTutorial.dbo.DemografiPegawai
--INNER JOIN SQLTutorial.dbo.GajiPegawai
--	ON DemografiPegawai.PegawaiID = GajiPegawai.PegawaiID
--GROUP BY Jabatan
--ORDER BY GajiTerbesar DESC


Select * 
From SQLTutorial.dbo.Listings
Inner Join SQLTutorial.dbo.Calendar
	ON Listings.id = Calendar.listing_id
Order By id Desc

Select * 
From SQLTutorial.dbo.Calendar
Order By listing_id Desc

Select Date, Substring(cal.Date,1,4)
From SQLTutorial.dbo.Calendar as Cal
--Order By listing_id Desc

SELECT *
From SQLTutorial.dbo.Listings
Inner Join SQLTutorial.dbo.Calendar
	ON Listings.id = Calendar.listing_id
Inner join SQLTutorial.dbo.Reviews
	ON Listings.id = Reviews.listing_id
Where SUBSTRING(CAST(reviews.date AS Varchar(19)),7,5) = 2016 
and SUBSTRING(CAST(calendar.date AS Varchar(19)),7,5) = 2016


Order By listing_id Desc