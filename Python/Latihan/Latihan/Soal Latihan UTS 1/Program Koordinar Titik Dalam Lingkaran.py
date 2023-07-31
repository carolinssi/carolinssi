# Program yang membaca sebuah point 2 dimensi
# dan menentukan letak point tersebut di dalam kuadran
#KAMUS
#Point , x , y : int

#ALGORITMA
x = int(input("Masukkan letak point di sumbu x:"))
y = int(input("Masukkan letak point di sumbu y:"))

#Menentukan letak point di dalam kuadran dan mencetaknya
if x>0:
   if y>0:
      print("Letak point ada di kuadran 1")
   else: # y<0
      print("Letak point ada di kuadran 4")
elif x<0:
   if y >0:
      print("Letak point ada di kuadan 2")
   else: # y<0
      print("Letak point ada di kuadran 3")
else:
   print("Kuadran tak dapat dihitung")
