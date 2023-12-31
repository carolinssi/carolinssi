USE [SQLTutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Pegawai]    Script Date: 29/06/2023 11:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Temp_Pegawai]
@Jabatan nvarchar(100)			--input
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
Where Jabatan = @Jabatan
GROUP BY Jabatan

Select * 
From #temp_pegawai

