N = int(input("Masukkan ukuran array T1:"))
def BacaArray(T):
   for i in range (0,N):
      T1 = int(input("Masukkan unsur ke-"+str(i)+":"))
   return

T1 = [0 for i in range(0,N)]
print("Masukkan array T1")
BacaArray(T1)
print()

T2 = [0 for j in range(0,N)]
print("Masukkan array T2")
BacaArray(T2)
print()

i=0
j=0
found = False
while (i<N and not found):
   if T1[i] != T2[j]:
      found=True
   else:
      i = i+1
      j = i
if (found):
   print("Array  tidak sama")
else:
   print("Array  sama")


         
            
