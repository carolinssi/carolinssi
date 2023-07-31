#Program mencari indeks terakhir Kemunculan Nilai

import random
N = int(input("Masukkan ukuran array:"))
T = [0 for i in range(0,N)]
for i in range(0,N):
   T[i]=random.randint(0,10)
  #T[i] = int(input())
   print( T[i],end=" " )

X = int(input("Masukkan nilai yang dicari dalam array T:"))

i=N-1
found=False
while (i>0 and found == False):
   if(T[i]==X):
      found = True
   else:
      i = i-1

if (found==True):
   print("Kemunculan terakhir nilai X ada di elemen >",i)
else:
   print("Nilai", X ,"tidak ditemukan")
   
