#Puji Tuhan 
#CARA I

N = int(input("Masukkan ukuran array:"))
T = [0 for i in range (0,N)]
import random
for i in range (0,N) :
   T[i] = random.randint(1,20)
   print(T[i])
#Menentukan unsur terbesar dan terkecil dalam array
maks = T[0]
min = T[0]
for i in range (0,N):
   if T[i] > maks:
      maks = T[i]
   elif T[i] <min:
      min = T[i]
   
print("Unsur terbesar:"+str(maks))
print("Unsur terkecil:"+str(min))



