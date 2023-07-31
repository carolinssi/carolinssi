import random
N = int(input("Masukkan ukuran array TI:"))
TI = [0 for i in range(0,N)]
for i in range(0,N):
   TI[i] = random.randint (0,500)
print(TI)
i = 0
count = 0
found = False
while (i<N and not found):
   if (TI[i]<0) :
    found = True
   else:
      count = count + 1
      i=i+1
if found==True:
   print("Tidak semua elemen array positif")
else:
   print("Semua elemen array positif")
   print(count)
   

   
