#NIM/Nama       : 16019167/Carolina Sinaga
#Tanggal        : Rabu,2 Oktober 2019
#Deskripsi      : Program yang menerima masukan bilangan asli N
#                 Membuat array dengan ukuran N, berisi barisan fibonacci F0,F1,F2,...,F(N-1)
#                 Menjumlahkan dan mencetak hasil penjumlahan tersebut

#KAMUS
#N : int
#P : int

#ALGORITMA

N=int(input("Masukkan ukuran array:"))
BF = [0 for i in range (0,N)]
print(BF)



for i in range (N):
    BF[i] = int(input("Suku ke-"+str(i)+":"))                 #Memasukkan nilai tiap suku


jumlah=0
for i in range(0,N):
    jumlah=jumlah+BF[i]
print("Maka, jumlah dari seluruh suku",jumlah)


