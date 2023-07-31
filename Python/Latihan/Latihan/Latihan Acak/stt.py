#NIM/Nama       : 16019167/Carolina Sinaga
#Tanggal        : Rabu,2 Oktober 2019
#Deskripsi      : Program yang menerima masukan bilangan asli N
#                 Membuat array dengan ukuran N, berisi barisan fibonacci F0,F1,F2,...,F(N-1)
#                 Menjumlahkan dan mencetak hasil penjumlahan tersebut

#KAMUS
#N : int
#P : int
#BF: barisan fibonacci 


#ALGORITMA
N=int(input("Masukkan ukuran array:"))#Program yang menerima masukan bilangan asli N
BF = [0 for i in range (0,N)]
print(BF)


#Mengisi nilai setiap suku Barisan 
for i in range (N):#Inisialisasi dengan array dengan ukuran N
    BF[i] = int(input("Suku ke-"+str(i)+":"))#Aksi dengan memasukkan nilai tiap suku
    print(BF)#Terminasi dengan output barisan fibonacci F0,F1,F2,...,F(N-1)
    

#Menentukan jumlah seluruh bilangan
jumlah=0                                        
for i in range(0,N):#Inisialisasi dengan array dengan ukuran N
    jumlah=jumlah+BF[i]#Menjumlahkan bilangan pada seluruh barisan
print("Maka, jumlah dari seluruh suku",jumlah)#Mencetak hasil penjumlahan tersebut



