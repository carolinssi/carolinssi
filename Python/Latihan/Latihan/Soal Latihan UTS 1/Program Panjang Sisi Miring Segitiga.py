# Program Menentukan Nilai Panjang sisi miring segitiga siku-siku
# KAMUS
# a : nilai dari alas segitiga
# b : nilai dari tinggi segitiga
# c : panjang dari sisi miring
# a,b,c : float

# ALGORIMA
# Asumsi a>0 dan b>0
a = float(input("Masukkan nilai dari alas segitiga:"))
b = float(input("Masukkan nilai dari tinggi segitiga:"))
#Mencetak output dari panjang sisi miring segitiga siku-siku
c = (a**2 + b**2)**0.5
print(c)
