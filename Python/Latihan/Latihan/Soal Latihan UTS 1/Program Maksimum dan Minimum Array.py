import random
N = int(input("Masukkan ukuran array TI:"))
TI = [0 for i in range(0,N)]
for i in range(0,N):
   TI[i] = random.randint (0,500)
print(TI)

print("Pilihan 0 :  Tuliskan nilai maksimum dan minimum dari elemen array")
print("Pilihan 1 : Tuliskan nilai maksimum saja")
print("Pilihan 2 :Tuliskan nilai minimum saja")

maks = TI[0]
min = TI[0]

for i  in range(0,N):
   if TI[i]>maks:
      maks = TI[i]
   if TI[i]< min:
      min = TI[i]

pilihan = int(input("Masukkan pilihan angka:"))
if pilihan ==0:
   print("Nilai maksimum dari array ialah:",maks)
   print("Nilai minimum dari array ialah:",min)
elif pilihan == 1:
   print("Nilai maksimum dari array ialah:",maks)
else: #pilihan ==2
   print("Nilai minimum dar array ialah:",min)


