##          Contoh Soal 1
# INPUT DATA
library(readxl)
berat <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-10/DATA SPC.xlsx", sheet = "Contoh 1")

#Aktifkan package yang akan digunakan
library(qicharts2)

#Bagan Kendali I
(qi1 <- qic(berat$`berat (gr)`, chart="i", point.size = 2, title="Bagan Kendali I Tepung Terigu (gram)", ylab="berat", xlab="kemasan ke-"))

#Bagan Kendali MR
(qi2<-qic(berat$`berat (gr)`, chart="mr", point.size = 2, title="Bagan Kendali MR Tepung Terigu (gram)", ylab="berat", xlab="kemasan ke-"))
#Informasi dari Badan Kendali
summary(qi1)
summary(qi2)


##          Contoh Soal 2
#Input data
library(readxl)
data <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-10/DATA SPC.xlsx", sheet = "Contoh 2")
olah <- data[,2:6] #gunakan kolom berisi variabel saja

#Aktifkan package yang akan digunakan
library(qcc)

#Bagan Kendali xbar
qq1 <- qcc(olah, type="xbar", nsigmas=3, title ="Bagan Kendali Volume Kontainer (Xbar)", ylab="Mean Sampel", xlab="Pengamatan")
#Bagan Kendali R
qq2 <- qcc(olah, type="R", nsigmas=3, title="Bagan Kendali Volume Kontainer (R)", ylab="Mean Sampel", xlab="Pengamatan")

summary(qq1)
summary(qq2)

##          Latihan Soal 1
#Input data
library(readxl)
data <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-10/DATA SPC.xlsx", sheet = "Latihan no 1")
olah <- data[,2:5] #gunakan kolom berisi variabel saja

#Aktifkan package yang akan digunakan
library(qcc)

#Bagan Kendali xbar
qq1 <- qcc(olah, type="xbar", nsigmas=3, title ="Bagan Kendali Ketebalan dari Produksi (Xbar)", ylab="Mean Sampel", xlab="Pengamatan")
#Bagan Kendali R
qq2 <- qcc(olah, type="R", nsigmas=3, title="Bagan Kendali  Ketebalan dari Produksi (R)", ylab="Mean Sampel", xlab="Pengamatan")

summary(qq1)
summary(qq2)

##          SOAL Tugas Akhir
# INPUT DATA

#Input data
library(readxl)
data <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-10/data.xlsx")
olah <- data[,2:3] #gunakan kolom berisi variabel saja

#Aktifkan package yang akan digunakan
library(qcc)

#Bagan Kendali xbar
qq1 <- qcc(olah, type="xbar", nsigmas=3, title ="Bagan Kendali Perbandingan Defect (Xbar)", ylab="Mean Sampel", xlab="Pengamatan")
#Bagan Kendali R
qq2 <- qcc(olah, type="R", nsigmas=3, title="Bagan Kendali Perbandingan Defect (R)", ylab="Mean Sampel", xlab="Pengamatan")

summary(qq1)
summary(qq2)


##         