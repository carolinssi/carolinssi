#NIM/NAMA   :16019167/Carolina Sinaga
#TANGGAL    :Selasa,1 Oktober 2019
#DESKRIPSI  :Program yang menuliskan pola 1 sebanyak N kali,
#2 sebanyak N-1,dan seterusnya


#KAMUS
#N: int

#ALGORITMA
N=int(input("Masukkan N:"))

for i in range(1,N+1):              #Inisialisasi
    for k in range(1,N+1):          #Aksi dan Pengulangan Bersarang
        print(i,end=" ")            #Terminasi
    N=N-1                           # Pengulangan dimana N secara berpola dikurang 1

  
