# DISTRIBUSI BINOMIAL
# X~Bin(n,p), n:banyaknya percobaan, p:peluang sukses
# x : nilai titik yang akan dihitung peluangnya
#Fungsi Distribusi Kumulatif P(X<=x)
#Fx = pbinom(x,n,p)
#Fungsi Kepadatan Peluang P(X=x)
#Px = dbinom(x,n,p)
#Fungsi Invers P(X<=x)=I
#Qx = qbinom(I,n,p)
#Pembangkitan nilai acak
#s : banyaknya bilangan yang akan dibangkitkan
#pa = rbinom(s,n,p)
#
#
#contoh 1  
# Suatu suku cadang dapat menahan uji goncangan tertentu dengan peluang 0,75.
# Misalkan, terdapat 4 buah suku cadang yang diuji. Tentukan peluang:
# a. antara 1 sampai 3 suku cadang yang diuji tidak mengalami kerusakan (dapat menahan goncangan)
# b. tepat 2 suku cadang tidak rusak
# x : p.a. banyaknya suku cadang dapat menahan goncangan
#diketahui n=4, p=0.75
#a. P(1<X<=3) = P(X<=3)-P(X<=1)
pbinom(3,4,0.75)-pbinom(1,4,0.75)
#b. P(X=2)
dbinom(2,4,0.75)
#
#
## DISTRIBUSI POISSON
# X~Poi(lambda), lambda:rata-rata banyaknya
# kejadian pada suatu selang waktu atau
# daerah tertentu
# x : nilai titik yang akan dihitung peluangnya
#Fungsi Distribusi Kumulatif P(X<=x)
#Fx = ppois(x,lambda)
#Fungsi Kepadatan Peluang P(X=x)
#Px = dpois(x,lambda)
#Fungsi Invers P(X<=x)=I
#Qx = qpois(I,lambda)
#Pembangkitan nilai acak
#s : banyaknya bilangan yang akan dibangkitkan
#pa = rpois(s,lambda)

#
#
#
#contoh 2
# Di suatu simpang jalan rata-rata terjadi 3 kecelakaan seminggu. Berapakah peluang pada suatu minggu tertentu
# a. Tepat 5 kecelakaan akan terjadi?
# b. Kurang dari 3 kecelakaan akan terjadi?
# c. Paling sedikit 2 kecelakaan akan terjadi?
# x : p.a. banyaknya kecelakaan dalam seminggu, diketahui lambda = 3

#a. P(X=5)
dpois(5,3)

#b. P(X<3)= P(X<=2)
ppois(2,3)

#c. P(X>=2) = 1-P(X<=1)
1-ppois (1,3)

dpois(6,4)
