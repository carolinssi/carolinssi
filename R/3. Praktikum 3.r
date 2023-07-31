##Distribusi Peubah Acak Diskret
# Di suatu desa rata - rata terjadi 5 kelahiran sebulan.
# x:banyaknya kelarihan dalam sebulan, lambda = 5
# a. Peluang tepat 7 kelahiran akan terjadi pada suatu bulan P(X=7)
dpois(7,5)
# b. Peluang paling banyak 4 kelahiran akan terjadi pada suatu bulan P(X<=4)
ppois(4,5)
# c. Peluang paling sedikit 3 kelahiran akan terjadi pada suatu bulan tertentu P(X>=3) = 1-P(X<=2)
1-ppois(2,5)
# d. Gambar grafik fungsi distribusi peluang untuk x = 1 hingga x = 10.
curve(ppois(x,lambda = 5),xlim=c(1,10),col="blue")
# e.  rerata dan variansi kelahiran desa tersebut, untuk x = 1 hingga x = 4.

# f. Jika diketahui Y = 3X + 3, rerata dan variansi untuk Y dengan ketentuan (e).


##Distribusi Peubah Acak Kontinu
#Sebuah museum mempunyai rata - rata pengunjung yang memiliki distribusi
#????~????????????(9.8) setiap 12 hari. 
# x: hari kedatangan pengunjung, dengan rate = 9.8
# a. Peluang kedatangan pengunjung dengan selang waktu paling banyak 4 hari. P(X<=4/12)=P(X<=0.3)
pexp(0.3,9.8)
# b. Peluang kedatangan pengunjung dengan selang waktu antara 2 sampai 6 hari.P(2/12<X<6/12)=P(X<=0.5)-P(X<=0.1667)
pexp(0.5,9.8)-pexp(0.1667,9.8)
# c. Gambarkan fungsi distribusi dalam bentuk grafik untuk x = 1 hingga x = 10.
curve(dexp(x,rate=9.8),xlim=c(1,10),col="blue")
# d. Tuliskan rerata dan variansi pengunjung, untuk x = 1 hingga x = 4.
# e. Jika diketahui Y = 3X+3, maka carilah rerata dan variansi untuk Y dengan ketentuan(d). 