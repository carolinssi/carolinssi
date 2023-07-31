#Program mencari indeks Pertama Kemunculan Nilai

import random
N = int(input("Masukkan ukuran array:"))
T = [0 for i in range(0,N)]
for i in range(0,N):
   T[i]=random.randint(0,101)
  #T[i] = int(input())
   print(i,T[i])

X = int(input("Masukkan nilai yang dicari dalam array T:"))

i=0
found=False
while (i<N and found == False):
   if(T[i]==X):
      found = True
   else:
      i = i+1

if (found==True):
   print("Kemunculan pertama Nilai X ada di elemen >",i)
else:
   print("Nilai", X ,"tidak ditemukan")
   
