#NIM/Nama   :16019167/Carolina Sinaga
#Tanggal    :Selasa,17 September 2019
#Deskripsi  :Program untuk menentukan kelas bedasarkan NIM

#Kamus
#A int

#Algoritma
#input
A=int(input("Masukan akhiran NIM:"))


#Proses dan Output
if(1<=A and A<=100 and(A%2!=0)):                #if untuk mentukan NIM masuk ke kelas yang mana
   print("Mahasiswa masuk ke kelas K1")
elif(1<=A and A<=100 and(A%2==0)):
   print("Mahasiswa masuk ke kelas K1")
elif(101<=A and A<=200 and(A%2!=0)):
   print("Mahasiswa masuk ke kelas K3")
elif(101<=A and A<=200 and(A%2==0)):
   print("Mahasiswa masuk ke kelas K4")
elif(201<=A and A<=300 and(A%2!=0)):
   print("Mahasiswa masuk ke kelas K5")
elif(201<=A and A<=300 and(A%2==0)):
   print("Mahasiswa masuk ke kelas K6")
elif(301<=A and A<=400 and(A%2!=0)):
   print("Mahasiswa masuk ke kelas K7")
elif(301<=A and A<=400 and(A%2==0)):
   print("Mahasiswa masuk ke kelas K8")
else :
     print("Mahasiswa masuk ke kelas K9")

         
    
    

