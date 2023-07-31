#NIM/NAMA   :16019167/Carolina Sinaga
#TANGGAL    :Selasa,15 Oktober 2019
#DESKRIPSI  :Program yang dapat memeriksa apakah B merupakan anagram dari A.
#Array B didefinisikan sebagai anagram dari array A bila
#elemen-elemen di array A dapat ditukar-tukar sehingga menghasilkan array B.

#KAMUS
#X: string

#ALGORITMA
size_A = int(input("Masukkan banyaknya elemen A : "))
data_A = []
for i in range(1,size_A+1):
    elemen = int(input("Masukkan elemen A ke-"+str(i)+": "))
    data_A.append(elemen)

size_B = int(input("Masukkan banyaknya elemen B : "))
data_B = []
for i in range(1,size_B+1):
    elemen = int(input("Masukkan elemen B ke-"+str(i)+": "))
    data_B.append(elemen)

data_anagram_A=[]
data_anagram_B=[]
for i in range(1,10+1):
    count = 0
    for j in range(0,len(data_A)):
        if i == data_A[j]:
            count += 1
    data_anagram_A.append(count)

    count = 0
    for j in range(0, len(data_B)):
        if i == data_B[j]:
            count += 1
    data_anagram_B.append(count)

identic = True
if(len(data_A) != len(data_B)):
    identic = False
else:
    i = 0
    while(identic and i < len(data_A)):
        if(data_anagram_A[i] != data_anagram_B[i]):
            identic = False
        else:
            i += 1

if(identic):
    print('A adalah anagram dari B')
else:
    print('A bukan anagram dari B')


