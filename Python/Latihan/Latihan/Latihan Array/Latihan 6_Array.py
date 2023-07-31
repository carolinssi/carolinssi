#Latihan-6 (1)
import random
H = int(input("Masukkan jumlah hari:"))
sum = 0
B = [0 for i in range(0,H)]
for i in range(0,H):
   B[i]=random.randint(25,39)
   #B[i] = int(input())
   sum = sum +B[i]
print(B)
min = B[0]
maks = B[0]
for i in range(0,H):
   if  B[i] <min:
      min = B[i]
   elif B[i]>maks:
      maks = B[i]
   sum = sum +B[i]
  #B[i] = int(input())
print(B)

#Latihan-6 (2)
#Program Menentukan suhu rata-rata dalam satu bulan
Rata_rata = sum/H
print("Suhu rata-rata dalam satu bulan ->",Rata_rata)

#Program Menentukan suhu terendah dan tertinggi  dalam satu bulan
print("Suhu terendah dalam satu bulan:",min)
print("Suhu tertinggi dalam satu bulan:",maks)


#Program Menentukan indeks pertama suhu di bawah X derajat
X = int(input("Masukkan suhu yang ingin dicari:"))
i = 0
found = False
while (i<H and not found):
   if (B[i]<X):
      found=True
   else:
      i = i +1
if (found==True):
   print("Suhu pertama kali dibawah",X,"pada hari ke-",i+1)
else:
   print("Suhu tidak pernah di bawah",X)


#Program Menentukan indeks berapa saja suhu di bawah  atau sama X derajat
Y = int(input("Masukkan suhu yang diinginkan:"))
i = 0
for  i in range (0,H):
   if B[i]<Y or B[i]==Y:
      print("Suhu ada dibawah",Y,"pada hari ke-",i+1,"yaitu",B[i])













