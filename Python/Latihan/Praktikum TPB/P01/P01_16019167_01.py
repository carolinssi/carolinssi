#NIM/Nama   :16019167/Carolina Sinaga
#Tanggal    :Selasa,17 September 2019
#Deskripsi  :Program Perbandingan Variabel untuk menentukan Diskon lebih besar



#Soal : Tuan Yon saat ini sedang berkunjung ke ITB. Ia mengunjungi dua kantin. Kantin A menawarkan diskon a/b
#dan kantin B menawarkan diskon c/d. Kini ia bingung, diskon manakah yang lebih besar? Buatkan program
#untuk membandingkan a/b dan c/d!

#Kamus
#A,B,C,D  int
#M,N float

#Logaritma
#Input
A=int(input("Masukkan a:"))
B=int(input("Masukkan b:"))
C=int(input("Masukkan c:"))
D=int(input("Masukkan d:"))

#Proses dan Output

M=float(A/B)
N=float(C/D)

if (M>N):
    print("Diskon kantin A Lebih Besar")
elif (M<N):
    print("Diskon kantin B Lebih Besar")
    
else :
    print("Diskon kedua kantin sama besar")






      
