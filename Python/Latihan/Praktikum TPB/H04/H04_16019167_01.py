# NIM/Nama  : Carolina Sinaga/16019167
# Tanggal      : Selasa, 28 Oktober 2019 
# Deskripsi    : Program yang menerima A dan B, lalu menuliskan semua nilai dari f(A), f(A + 1), . . . , f(B) dari fungsi yang sudah ada

#KAMUS
#A,B: int

def fungsi(x):
   # Menghasilkan nilai dari suatu fungsi  f(x) jika x sembarang

   #KAMUS LOKAL
   # y : int

   #ALGORITMA
    y = x**2 -2*x +5
    return y
   
#ALGORITMA PROGRAM UTAMA
A = int(input("Masukkan A :  "))
B = int(input("Masukkan B :  "))

# Mencetak nilai dari f(A), f(A + 1), . . . , f(B) dari fungsi yang sudah ada
for i in range(A,B+1,1):
 f = fungsi(A)
 print("f("+str(A)+") = "+str(f))
 A = A+1
