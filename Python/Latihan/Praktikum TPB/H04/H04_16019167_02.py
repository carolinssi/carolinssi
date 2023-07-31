# NIM/Nama  : Carolina Sinaga/16019167
# Tanggal       : Selasa, 28 Oktober 2019
# Deskripsi     : Program yang menuliskan Matriks A  berukuran N x M dan menuliskan berapa banyak bilangan positif di dalam matriks tersebut

#KAMUS
# A : Matriks of integer
# N,M : int
# i, j : int (indeks)

#ALGORITMA
#deklarasi matriks
N = int(input("Masukkan N :  ")) # N merupakan jumlah kolom dari matriks yang akan dibentuk
M = int(input("Masukkan M :  ")) # M merupakan jumlah baris dari matriks yang akan dibentuk
A = [[0 for j in range(N)] for i in range(M)] # Inisialisasi matriks dengan semua nilai baris dan kolom ialah 0

# Mengisi matriks ukuran N x M
for j in range (N):
   for i in range (M):
      A[i][j] = int(input("Masukkan nilai A["+str(j+1)+"]["+str(i+1)+"]"+" :  ")) # Menuliskan isi matriks ke layar 

# Mencetak seluruh isi matriks A
for j in range (N):
    # Cetak baris ke-i
    for i in range (M):
        print(str(A[i][j]) + "  ", end='')
    # Baris ke-i selesai dicetak
    print ()  # ganti baris
                    
#Menentukan jumlah bilangan positif dari matriks A           
count =0
for j in range (N):
   for i in range (M):
      if (A[i][j]>0):
         count = count +1
print("Ada",count,"bilangan positif di matriks.")
