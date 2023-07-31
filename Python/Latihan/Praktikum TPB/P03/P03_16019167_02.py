f = int(input("Masukkan derajat f:"))
g = int(input("Masukkan derajat g:"))

F = [0 for i in range (0,f+1)]
for i in range(f,0,-1):
   F[i] = int(input("Masukkan koefisien x^"+str(f-i)+":"))

G = [0 for j in range (0,g+1)]
for j in range(g+1,0,-1):
   G = int(input("Masukkan derajat f:"+str(g-j)+":"))

H = [0 for i in range (0,f+g+1)]

for i in range(0,f+1):
   for j in range(0,g+1):
      H[i+j]=F[i]*G[j]

for i in range(f+g+1):
   if H[i] == 0:
      print("+"+str(H[i])+"x^"+str(f+g-i),end=" ")
   else:
     if H[i]>=0:
        print("+"+str(H[i])+"x^"+str(f+g-i),end=" ")
     else:
        print("-"+str(H[i]*(-1))+"x^"+str(f+g-i),end=" ")
         

