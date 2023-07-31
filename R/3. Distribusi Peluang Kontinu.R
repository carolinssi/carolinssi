# DISTRIBUSI NORMAL
# X~N(mu,sigma2), mu:mean, sigma2:variansi, sd:standar deviasi
# x : nilai titik yang akan dihitung peluangnya
#Fungsi Distribusi Kumulatif P(X<=x)
#Fx = pnorm(x,mu,sd)
#Fungsi Kepadatan Peluang P(X=x)
#Px = dnorm(x,mu,sd)
#Fungsi Invers P(X<=x)=I
#Qx = qnorm(I,mu,sd)
#Pembangkitan nilai acak
#s : banyaknya bilangan yang akan dibangkitkan
#pa = rnorm(s,mu,sd)
#
#
#contoh 3
# Pemuaian suatu batang baja bila diberi beban tertentu diketahui berdistribusi
# normal dengan rataan 0.05 cm dan simpangan baku 0.01. Tentukan peluang bahwa pemuaian
# a. Lebih dari 0.1 cm
# b. Antara 0.025 dan 0.065
# c. Kurang dari 0.04

# x : p.a. panjang pemuaian batang baja,
# diketahui mu = 0.05 dan sd = 0.01
# a. P(X>0.1) = 1- P(X<=0.1)
1-pnorm(0.1,0.05,0.01)
# b. P(0.025<X<0.065)= P(X<=0.065)-P(X<=0.025)
pnorm(0.065,0.05,0.01)-pnorm(0.025,0.05,0.01)
# c. P(X<0.04)
pnorm(0.04,0.05,0.01)
#
#
#
# DISTRIBUSI EKSPONENSIAL
# X~exp(rate), rate:laju menghasilkan suatu kejadian
# x : nilai titik yang akan dihitung peluangnya
#Fungsi Distribusi Kumulatif P(X<=x)
#Fx = pexp(x,rate)
#Fungsi Kepadatan Peluang P(X=x)
#Px = dexp(x, rate)
#Fungsi Invers P(X<=x)=I
#Qx = qexp(I, rate)
#Pembangkitan nilai acak
#s : banyaknya bilangan yang akan dibangkitkan
#pa = rexp(s, rate)
#
#
#contoh 4
# Sebuah toko buku besar di Bali mempunyai rata-rata kedatangan pengunjung yang
# berdistribusi eksponensial sebesar 5,8 setiap 50 menit. Berapa peluang kedatangan pengunjung memiliki:
#  a. selang waktu 15 menit atau kurang
#  b. selang waktu diantara 20 sampai 30 menit

# x : p.a. waktu kedatangan pengunjung,
# diketahui rate = 5.8
#a. P(X<=15/50)=P(X<=0.3)
pexp(0.3,5.8)
#b. P(20/50<X<30/50)= P(X<=0.6)-P(X<=0.4)
pexp(0.6,5.8)-pexp(0.4,5.8)
