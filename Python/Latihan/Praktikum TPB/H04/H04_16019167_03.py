# NIM/Nama  : Carolina Sinaga/16019167
# Tanggal       : Selasa, 28 Oktober 2019
# Deskripsi     : Program yang menerima masukan N dan menuliskan matriks segitiga pascal berukuran N×N

#KAMUS
# K : Matriks of integer
# N : int
# i, j : int (indeks)

#ALGORITMA
#deklarasi matriks
N = int(input("Masukkan N :  ")) # N merupakan jumlah dari baris dan kolom dari matrik yang akan dibentuk
K = [[1 for j in range(N)] for i in range(N)] # Inisialisasi matriks dengan semua nilai baris dan kolom ialah 1

# Inisialisasi matriks dengan semua nilai baris pertam dan kolom pertama ialah 1
for j in range (N):
   for i in range (N):
      K[i][j]= 1
      
#Lalu, setiap isi matriks yang belum ada isinya diisi dengan jumlah dari bilangan di atas dan kirinya
for i in range (1,N):
   for j in range (1,N):
      K[i][j] = K[i-1][j]+K[i][j-1]

# Mencetak seluruh isi matriks K
for j in range (N):
    # Cetak baris ke-i
    for i in range (N):
        print(str(K[i][j]) + "  ", end='')
    # Baris ke-i selesai dicetak
    print ()  # ganti baris
