setwd("D:/Jurusan/AnDat/Praktikum Andat/Program")
dir()
getwd()

# Membuat Vektor
1 : 10
typeof(1:10)
(da <- c(1,2,3))
c(3:7,5,2,1)
(v <- c(12,34,56,78,23:30))
length(v)
is.null(dim(v))
seq(3,12,by = 2)

# Operasi pada vektor
v + 1:2
v + rep(1:2,6)
v * 1:2


##2. Matriks
matrix(0,ncol=4,nrow=3)
matrix(0,3,4)
matrix(0,4,3)
matrix(c(10,2),nrow = 2,ncol = 3)
matrix(c(0,1,2),nrow = 3,ncol = 4)
matrix(da,da)
rbind(da,da)
(a<-matrix(c(10,2,5),nrow = 2,ncol=3))
(a<-matrix(c(10,2,5),nrow = 3,ncol=3))
rownames(a)<-c("r1","r2","r3")
colnames(a)<-colnames(a,do.NULL=F,prefix="Var")
a
colnames(a)<-c("c1","c2","c3")
a
t(a)
is.matrix(a)




##3. Data Frame
v1<-1:5
v2<-c("Apel","Belimbing","Cherry","Dukuh","-")
v3<-c(50000,20000,35000,18000,NA)
dfHargaBuah<-data.frame(v1,v2,v3)
colnames(dfHargaBuah)<-c("No","Nama Buah","Harga")
dfHargaBuah



##4.Subsetting
# Matrix
m<-matrix(c(10,2,5),nrow=2,ncol=3,byrow=T)
m
m[1,1:3]
m[1,]
is.matrix(m[1:2,1:2])


# Vektor
(v<-c(c(12,34,56),78,23:25))
v
v[1]
v[c(2,4)]
v[seq(2,7,by=2)]
v>=30


# Data Frame
dfHargaBuah
dfHargaBuah$No
dfHargaBuah$'Nama Buah'[3]
dfBuah<-data.frame(dfHargaBuah[1:3,])
dfBuah


## 5. List
l <- list(1,"Satu",TRUE)
ll<-list(vektor=v,matriks=m,l)
ll[[3]]
ll[[3]][[2]]


## 6. Faktor
# Membuat vektor.
apple_colors<-c('green','green','yellow','red','red','red','green')
# Membuat Objek Faktor
(factor_apple<-factor(apple_colors))

## Fungsi
new.function<-function(a){
  for(i in 1:a){
    b<-i^2
    print(b)
  }
}
new.function(6)

install.packages("gpplot2")
library(ggplot2)

medali<-read.table("D:/Jurusan/AnDat/Praktikum Andat/Program/medali.csv",header=TRUE,sep=";")

install.packages("xlsx")
library(xlsx)
medali_out <- read("D:/Jurusan/AnDat/Praktikum Andat/Program/medali_out.xlsx",sheetname="Sheet1")

install.packages("readxl")
library(readxl)
library(ggplot2)
