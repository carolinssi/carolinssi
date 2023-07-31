# NIM/NAMA  : 16019167/Carolina Sinaga
#Tanggal    : Minggu,15 September 2019
#Deskripsi  : Problem 3

angka=int(input('Masukkan X:'))

if (angka==0):
    print('X adalah bilangan nol')
elif(angka>0 and angka % 2 == 0):
    print('X adalah bilangan positif genap')
elif(angka>0 and angka % 2 != 0):
    print('X adalah bilangan positif ganjil')
else : print('X adalah bilangan negatif')
    


