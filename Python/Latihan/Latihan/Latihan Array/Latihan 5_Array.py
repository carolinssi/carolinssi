import random
N = int(input("Masukkan ukuran array V:"))
V = [0 for i in range(0,N)]
for i in range(0,N):
   V[i]=random.randint(0,10)
  #V[i] = int(input())
print(V)

M = int(input("Masukkan ukuran array W:"))
U = [0 for i in range(0,M)]
for i in range(0,M):
   U[i]=random.randint(0,10)
  #U[i] = int(input())
print(U)

i = 0
if (N>M):
   T = M
else:
   T = N
W = [0 for i in range(0,T)]
while i<T:
   W[i] = V[i] + U[i]
   i = i+1
print("Jumlah dari array U dan V ialah:")
print(W)
