N = int(input("Masukkan jumlah siswa:"))
B = [0 for i in range (0,N)]
print("Masukkan data berat badan siswa:")
for i in range(0,N):
     B[i] = int(input())
maks = B[0]
min = B[0]

for i in range(0,N):
   if (B[i]>maks):
      maks = B[i]
   if (B[i]<min):
      min = B[i]
print("Berat badan terbesar = ",maks)
x = int(input("Masukkan berat badan="))
count = 0
i = 0
for i in range(0,N):
   if (B[i]>x):
      count = count + 1
      i = i - 1

   else:
      i = i - 1
print("Banyaknya siswa dengan berat badan >",x,"=",count)
print("Daftar berat badan >",x,"=")
for i in range(0,N):
   if (B[i]>x):
      x = B[i]
      print(x)
   i = i - 1
