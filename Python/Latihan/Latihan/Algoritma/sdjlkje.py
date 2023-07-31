N = int(input('Masukkan N : '))
T = []

for i in range(0,N):
    i = int(input())
    T[i]==i

print("Hasil dibalik : ")
i = N - 1
while i >= 0:
    print(T[i])
    i-=1
