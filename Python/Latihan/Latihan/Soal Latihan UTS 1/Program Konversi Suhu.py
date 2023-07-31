# Program yang dapat mengkonversi suhu dari derajat celsius ke derajat reamur/fahreheit/kelvin
# KAMUS
# TC : Suhu dalam derajat celsius
# TR : Suhu dalam derajat reamur
# TF : Suhu dalam derajat fahrenheit
# TK : Suhu dalam derajat kelvin
# TC,TR,TF,TK :float

#ALGORITMA
TC = float(input("Masukkan suhu dalam derajat celsius:"))
kode = input("Masukkan kode konversi :")
if kode=='F':
   T = (9/5 * TC) + 32
elif kode == 'R':
   T = 4/5 * TC
elif kode=='K':
   T = TC + 273
else:
   print("Kode konversi error")
print("Suhu dalam derajat",kode ,"ialah",T)
