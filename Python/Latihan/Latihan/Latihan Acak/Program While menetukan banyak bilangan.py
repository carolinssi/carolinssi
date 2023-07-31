i = 0
sum = 0
count = 0

i = int(input("Masukkan nilai:"))
while i!=-999:
    i = int(input("Masukkan nilai:"))
    count+=1
    sum=sum+i

if (count>0):
    print("Banyaknya bilangan:"+str(count))
    print("Jumlah total:"+str(sum))
    rata = sum/count
    print("Rata-rata:",str(rata))
else:
    print("Tidak ada data yang diolah")
