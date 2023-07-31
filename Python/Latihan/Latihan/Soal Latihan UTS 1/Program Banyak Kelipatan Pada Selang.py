# Program menentukan banyaknya kelipatan X pada selang a,b
#KAMUS
# X,a,b : int

X = int(input("Masukkan bilangan X:"))
a = int(input("Masukkan nilai ujung bawah:"))
b = int(input("Masukkan nilai ujung atas:"))
count = 0
for i in range(a,b):
   if a<b:
      if i%X==0:
         count+=1
      else:
         i+1
   else:
      print("Masukkan ujung selang salah")

print (count)
