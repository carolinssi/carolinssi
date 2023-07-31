M = int(input("Masukkan jumlah kelereng Merah:"))
H = int(input("Masukkan jumlah kelereng Hijau:"))
K = int(input("Masukkan jumlah kelereng Kuning:"))

if M>0 and H>0 and K>0:
    Harga = 10*M+15*H+20*K
print("Harga yang harus dibayarkan oleh anak untuk membeli kelereng:",Harga)
