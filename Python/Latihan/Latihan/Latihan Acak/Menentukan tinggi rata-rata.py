r=1
i=0
sum=0
count = 0
while r>0:
   N = int(input("Masukkan jumlah anak :"))
   for i in range(0,N):
       (i)=float(input("Masukkan tinggi badan :"))
       sum = sum +(i)
       count +=1
   print("Jumlah seluruh tinggi badan anak:",sum)
   print("Jumlah anak:",count)
   Rata_rata = float(sum/count)
   print("Maka, rata- rata tinggi badan seluruh anak adalah",Rata_rata)
       
