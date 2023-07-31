

#NIM/NAMA   :16019167/Carolina Sinaga
#TANGGAL    :Selasa,15 Oktober 2019
#DESKRIPSI  :program yang menerima N buah bilangan
#dan menuliskan kembali bilangan tersebut, namun terbalik


#KAMUS
#N: int

#ALGORITMA

data_size = input('Masukkan N : ')
data = []

for i in range(0,int(data_size)):
    element = int(input())
    data.append(element)

print("Hasil dibalik : ")
i = int(data_size) - 1
while i >= 0:
    print(data[i])
    i-=1


cara 2 : 
#N: int

#ALGORITMA

N = int(input('Masukkan N : '))

P = [0 for i in range(0,N)]
for i in range(0,N):
    P[i] = int(input())
  

print("Hasil dibalik : ")
i = N - 1
while i >= 0:
    print(P[i])
    i-=1
