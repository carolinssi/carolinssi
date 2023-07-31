# NIM/NAMA  : 16019167/Carolina Sinaga
#Tanggal    : Minggu,15 September 2019
#Deskripsi  : Program Kalkulator sederhana yang menerima 2 buah angka dan sebuah karakter operasi,menuliskan hasil perhitungannya..Operator yang diterima adalah +(tambah),-(kurang),*(kali),/(bagi,dibulatkan ke bawah),%(sisa bagi)

#Program Kakulator Sederhana
#Penjumlahan,Pengurangan,Perkalian,Pembagian,Sisa Pembagian

#Kamus
# angka_1 : int
# angka_2 : int

#ALGORITMA
angka_1=int(input('Masukkan angka pertama:'))
angka_2=int(input('Masukkan angka kedua:'))
pilih=input('Masukkan operator:')

if pilih == "+":
    print(angka_1,"+",angka_2,"=",angka_1+angka_2)
elif pilih=="-":
    print(angka_1,"-",angka_2,"=",angka_1-angka_2)

elif pilih == "*":
    print(angka_1,"*",angka_2,"=",angka_1*angka_2)
elif pilih == "/":
    print(angka_1,"/",angka_2,"=",angka_1//angka_2)
elif pilih == "%":
    print(angka_1,"%",angka_2,"=",angka_1%angka_2)

else:
    print("masukkan salah")
