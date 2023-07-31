# Program yang menerima 3 buah integer yang berbeda dan menuliskan urutan integer dari yang terbesar
# KAMUS
# a,b,c : int

#ALGORITMA
a = int(input("Masukkan nilai integer pertama:"))
b = int(input("Masukkan nilai dari integer kedua:"))
c = int(input("Masukkan nilai dari integer ketiga:"))
if c>a and a>b:
      print(c,a,b)
elif c>a and b>a:
      print(c,b,a)
elif b>a and a>c:
      print(b,a,c)
elif b>a and c>a:
      print(b,c,a)
elif a>b and  b>c:
      print(a,b,c)
elif a>b and b<c:
      print(a,c,b)
else:
   print("error")
