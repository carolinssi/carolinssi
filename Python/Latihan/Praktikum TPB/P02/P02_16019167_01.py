#NIM/NAMA   :16019167/Carolina Sinaga
#TANGGAL    :Selasa,1 Oktober 2019
#DESKRIPSI  :Program Program Menuliskan Game dari
#A hingga B dimana pada selang A sampai B jika
#terdapat bilangan habis dibagi 5 maka akan diprint Fizz,
#jika terdapat bilangan habis dibagi 7 maka akan diprint Buzz, dan jika terdapat
#bilangan habis dibagi 5 dan 7 akan diprint FizzBuzz

#KAMUS
#A,B int

#ALGORIMA
A=int(input("Masukkan A:"))
B=int(input("Masukkan B:"))

for i in range (A,B+1,1):         #Inisialisali
    if(i%35==0):                  #Aksi
        i= "FizzBuzz"
    elif(i%5==0):                 #Aksi
        i= "Fizz"
    elif(i%7==0):                 #Aksi
        i= "Buzz"
  
    print(i)                      #Terminasi
