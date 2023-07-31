
print("KERETA ANTARKOTA")
print()

def min(a,b):
    if a < b:
        return a
    else:
        return b
    
def kelasFinder(kelas):
    if kelas == "ekonomi":
        return 0
    elif kelas == "eksekutif":
        return 1
    else:
        return 2
    
def bool(yaAtauTidak):
    if yaAtauTidak == "ya":
        return True
    else:
        return False

beliTiket = True

kota=["Tangerang", "Jakarta", "Bogor", "Bandung", "Cirebon", "Purwokerto", "Semarang", "Yogyakarta", "Kediri", "Surabaya"]

cap = [[100 for j in range(3)] for i in range(len(kota))]

while beliTiket:
    print(kota)
    print()
    
    asal=input("Kota asal: ")
    tujuan=input("Kota tujuan: ")
    print()
    
    tanggal=input("Tanggal keberangkatan: ")
    print()
    
    print("Pilihan kelas kereta: ekonomi, eksekutif, bisnis")
    kelas=input("Kelas kereta: ")
    print()
    
    for i in range(len(kota)):
        if kota[i]==asal:
            A=i
            break
    
    for j in range(len(kota)):
        if kota[j]==tujuan:
            T=j
            break
        
    adaKursi = cap[0][kelasFinder(kelas)]
    for i in range(A+1,T+1):
        adaKursi = min(cap[i][kelasFinder(kelas)], adaKursi)
        
    print("Anak di atas umur tiga tahun harus memiliki tiket sendiri")
    while True:
        dewasa=int(input("Penumpang dewasa: "))
        bayi=int(input("Penumpang bayi: "))
        if adaKursi >= dewasa:
            for i in range(A+1,T+1):
                cap[i][kelasFinder(kelas)] -= dewasa
            break
        else:
            print("\nTidak cukup kursi untuk penumpang dewasa")
        
    jarak=abs(T-A)
    
    harga=0
    
    if kelas=="ekonomi":
        harga=dewasa*(100000+(jarak*10000))
    elif kelas=="eksekutif":
        harga=dewasa*(120000+(jarak*20000))
    elif kelas=="bisnis":
        harga=dewasa*(150000+(jarak*30000))
    else:
        print("Tidak ada pilihan kelas")
    
    if harga!=0:
        print()
        print("TIKET KERETA ANTARKOTA")
        print("Kota asal: ", asal)
        print("Kota tujuan: ", tujuan)
        print("Tanggal keberangkatan: ", tanggal)
        print("Kelas :", kelas)
        print(dewasa, " penumpang dewasa, ", bayi, " penumpang bayi")
        print("Total tiket ", harga, " rupiah")
        print()
        
    beliTiket = bool(input("Beli tiket lagi? ya/tidak "))

print()
print("Terima kasih")
