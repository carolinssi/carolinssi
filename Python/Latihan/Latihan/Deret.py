#Program Barisan Fibonacci
n = int(input("Masukkan pangkat tertinggi n:"))
x = int(input("Masukkan nilai yang ingin dijumlahkan:"))

sum = 0
y = 0

for i in range(1,n+1):
   y = x**i
   sum = sum + y
   print(y)

print("Jumlah barisan dari deret",x,":",sum)

#Program Deret tentu
n = int(input("Masukkan pangkat tertinggi n:"))
x = int(input("Masukkan nilai yang ingin dijumlahkan:"))

sum = 0
y = 0
b = 2

for i in range(1,n+1):
   y = x+(i-1)*b
   sum = sum + y
   print(y)

print("Jumlah barisan dari deret",x,":",sum)
   

   
