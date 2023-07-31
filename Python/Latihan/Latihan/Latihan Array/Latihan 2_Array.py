
N = int(input("Masukkan jumlah mahasiwa:"))
Nilai = [' ' for i in range(1,N+1)]
Lulus=0
Tidak_Lulus=0

for i in range(1,N+1):
   Nilai = str(input("Masukkan nilai :"))
   if Nilai=='D' or Nilai=='E':
      Tidak_Lulus +=1
   else:
      Lulus +=1

print("Jumlah mahasiswa yang lulus:"+str(Lulus))
print("Jumlah mahasiswa yang tidak lulus:"+str(Tidak_Lulus))
      

