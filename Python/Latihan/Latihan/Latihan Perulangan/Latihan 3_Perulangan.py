X = 0
Ganjil = -1
Genap = 0
while X>=0:
    X = int(input("Masukkan nilai :"))
    if X%2==0:
        Genap +=1
    else:#X%2!=0
        Ganjil +=1
print("Jumlah input yang genap:"+str(Genap))
print("Jumlah input yang ganjil:"+str(Ganjil))




#cara II
X = int(input("Masukkan nilai :"))
Ganjil = 0
Genap = 0

while X>=0:
    if X%2==0:
        Genap +=1
    else:#X%2!=0
        Ganjil +=1
    X = int(input("Masukkan nilai :"))

print("Jumlah input yang genap:"+str(Genap))
print("Jumlah input yang ganjil:"+str(Ganjil))
