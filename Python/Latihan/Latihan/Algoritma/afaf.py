a = int(input("Masukkan panjang array A:"))
A = [0 for i in range(0,a)]
for i  in range(0,a):
   A[i] = int(input())

b = int(input("Masukkan panjang array B:"))
B = [0 for j in range(0,b)]
for j  in range(0,b):
   B[j] = int(input())
e =0 
if (a<b):
   e = a
else:
   e = b
E = [0 for i in range(0,e)]
t = False
for i in range(0,a):
   for j in range(0,b):
      if (A[i]==B[j]):
         E[i] = A[i]
         t = True
if (t==True):
   for i in range(0,e):
      print("Elemen yang beririsan:",E[i],end=" ")
else:
   print("Tidak ada elemen yang beririsan")
   

   
