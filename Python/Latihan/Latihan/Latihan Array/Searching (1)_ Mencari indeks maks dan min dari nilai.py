#Puji Tuhan 

N = int(input("Masukkan ukuran array:"))
T = [0 for i in range (0,N)]
import random
for i in range (0,N) :
   T[i] = random.randint(1,20)
   print(i,T[i])
#Menentukan unsur terbesar dan terkecil dalam array
maks = T[0]
min = T[0]
i_maks=0
i_min = 0
for i in range (0,N):
   if T[i] > maks:
      maks = T[i]
      i_maks= i
   elif T[i] <min:
      min = T[i]
      i_min = i
   
print("Unsur terbesar:",i_maks,"->"+str(maks))
print("Unsur terkecil:",i_min,"->"+str(min))
