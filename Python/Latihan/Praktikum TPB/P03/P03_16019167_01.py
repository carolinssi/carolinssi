N = int(input("Masukkan jumlah data:"))

#membuat array A dengan ukuran N
A = [0 for i in range(N)]
for i in range(N):
    A[i] = int(input())

#X sebagai batas yang valid
X = int(input("Masukkan X:"))

sum = 0 #jumlah nilai data yang akan dicari rata-rata
count = 0 #jumlah banyaknya data yang akan dicari rata-rata

for i in range(N):
    if A[i]>= X: #data di A lebih besar dari X
        sum = sum + A[i]
        count = count + 1
if (count==0): #tidak ada data yang lebih besar atau sama dengan X
     print("Tidak ada data yang valid")
else:
    print("Rata-rata data adalah",(sum/count))
 
