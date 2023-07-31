#NIM/Nama       : 16019167/Carolina Sinaga
#Tanggal        : Selasa,1 Oktober 2019
#Deskripsi      : Program yang menerima bilangan N dan menuliskan bilangan 10^x terkecil yang lebih dari N.

#KAMUS
#N : int
#P : int

#ALGORITMA

N=int(input("Masukkan N:"))
P=int(10)               
while(N>P)or (N==P):
    P=P*10
if(N==0):
    print(1)
else:
    print(P)

