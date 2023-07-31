#NIM/NAMA   :16019167/Carolina Sinaga
#TANGGAL    :Selasa,15 Oktober 2019
#DESKRIPSI  :Program yang menerima sebuah string dan menuliskan apakah string tersebut palindrom.
#KAMUS
#X: string

#ALGORITMA

X=input("Masukkan string:")
length=len(X)
kondisi=True

for i in range(0,lenght):
    if(kondisi): 
        ada=length-(i-1)
        if X [i] is X[ada]:
            kondisi=True
        else:
            kondisi=False

if(kondisi):
    print(str(X)+"adalah palindrom")
else:
    print(str(X)"bukan palindrom ")
