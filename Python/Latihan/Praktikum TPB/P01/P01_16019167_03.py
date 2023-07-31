#NIM/Nama   :16019167/Carolina Sinaga
#Tanggal    :Selasa,17 September 2019
#Deskripsi  :Program Menentukan Provinsi yang berpotensi menjadi juara umum OSN

#KAMUS
#A,B,C,D,E,F int
#M,N int


#Logaritma
#Input
A=int(input("Masukkan perolehan emas Jawa Tengah:"))
B=int(input("Masukkan perolehan perak Jawa Tengah:"))
C=int(input("Masukkan perolehan perunggu Jawa Tengah:"))
D=int(input("Masukkan perolehan emas Jawa Barat:"))
E=int(input("Masukkan perolehan peak Jawa Barat:"))
F=int(input("Masukkan perolehan perunggu Jawa Barat:"))

#Proses dan Output
M=int(3*A+2*B+1*C)              #M merupakan jumlah skor  Jawa Tengah
N=int(3*D+2*E+1*F)              #N merupakan jumlah skor Jawa Barat

if(M>N):
      print("Pemenangnya adalah Jawa Tengah")
elif(M==N):                                         # jika jumlah M dan N sama, maka juara umum ditentukan melalui jumlah emas terbanyak
      if(A>D):
          print("Pemenangnya adalah Jawa Tengah")
      elif(A==D):                                   #jika jumlah A dan D sama, maka juara umum ditentukan melalui jumlah perak terbanyak
          if(B>E):
              print("Pemenangnya adalah Jawa Tengah")
          elif(B==E):                               #jika jumlah B dan E sama,maka juara umum ditentukan melalui jumlah perunggu terbanyak
              if(C>F):
                  print("Pemenangnya adalah Jawa Tengah")
              else:
                    print("Pemenangnya adalah Jawa Barat")
          else:
                print("Pemenangnya adalah Jawa Barat")
      else:
            print("Pemenangnya adalah Jawa Barat")                                    
else:
    print("Pemenangnya adalah Jawa Barat")                  

