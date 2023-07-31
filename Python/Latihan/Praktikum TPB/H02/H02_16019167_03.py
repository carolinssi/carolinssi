#NIM/Nama       : 16019167/Carolina Sinaga
#Tanggal        : Selasa,1 Oktober 2019
#Deskripsi      : Program yang menerima X dan dapat menentukan apakah X adalah bilangan prima

#KAMUS
#X :int
#P :int
#i :int

#ALGORITMA
P=0
i=0
X=int(input("Masukkan X:"))
while(i<X):
    i+=1
    if(X%i==0):
        P+=1
if(P==2):
    print(X,"adalah bilangan prima")
else:
    print(X,"bukan bilangan prima")
