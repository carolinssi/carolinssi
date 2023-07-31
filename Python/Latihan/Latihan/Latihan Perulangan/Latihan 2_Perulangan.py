i = 0
Tidak_lulus = 0
Lulus = 0

N = int(input("Masukkan Banyak siswa di kelas:"))
for i in range(1,N+1):
    Nilai_siswa=input("Masukkan nilai Siswa:")
    if (Nilai_siswa=='E' or Nilai_siswa=='F'):
        Tidak_lulus+=1
    else:
        Lulus+=1
print("Jumlah yang tidak lulus:"+str(Tidak_lulus))
print("Jumlah yang lulus:"+str(Lulus))
        
