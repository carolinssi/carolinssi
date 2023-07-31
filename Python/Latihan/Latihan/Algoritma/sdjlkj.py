

#NIM/NAMA   :16019167/Carolina Sinaga
#TANGGAL    :Selasa,91 Oktober 2019
#DESKRIPSI  :Program yang menuliskan pola 1 sebanyak N kali,
#2 sebanyak N-1,dan seterusnya


#KAMUS
#N: int

#ALGORITMA

import random
N=int(input("Masukkan N:"))
T=[0 for i in range (0,N)]
for i in range(0,N):
    T[i] = random.randint(1,10)

print(T)
Q=[0 for i in range (0,N)]
print("Hasil dibalik:")  
for i in range(0,N):
    Q[i]==T[i]
print(Q)

