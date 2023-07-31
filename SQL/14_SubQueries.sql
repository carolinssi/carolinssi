/*
Today's Topic : Subqueries (in the Select, From, and Where Statement)
*/



--Select * 
--From GajiPegawai

-- Subquery in Select
Select PegawaiId, Gaji, (Select Avg(Gaji) From GajiPegawai) AS AllAvgGaji
From GajiPegawai

-- How to do it with Partition By
Select PegawaiId, Gaji, Avg(Gaji) over() AS AllAvgGaji
From GajiPegawai

-- Why Group By doesn't work 
Select PegawaiId, Gaji, Avg(Gaji) AS AllAvgGaji
From GajiPegawai
GROUP BY PegawaiID, Gaji
ORDER By 1,2

-- Subquery in From 
Select a.PegawaiID, AllAvgGaji
From (Select PegawaiId, Gaji, (Select Avg(Gaji) From GajiPegawai) AS AllAvgGaji
	  From GajiPegawai) as a


-- Subquery in Where
Select PegawaiID, Jabatan, Gaji
From GajiPegawai
Where PegawaiID in(
		Select PegawaiID
		From DemografiPegawai
		Where Usia > 30)


