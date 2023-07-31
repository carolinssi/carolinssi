# Vektor
c(1,2,3)
a <-c(1,2,3)
b <-c(3:7,5,2,1)
length(b)
c <-seq(3,12,by=2)
length(c)
d <- b+1:2
e <- b*1:2
a

# Matriks
#cara bikin matriks
rbind(a,a)
cbind(a,a)
matrix(c(10,2,5),3,4)
f <-matrix(c(10,2,5),2,3)
rownames(f)<-c("r1","r2")
colnames(f)<-colnames(f,do.NULL=T,prefix="Var")
#transpose Matriksf
t(f)

#Data Frame
v1 <- 1:5
v2 <-c("Apel","Belimbing","cherry","dukuh","-")
v3 <- c(50000,20000,35000,18000,NA)
dfHB <- data.frame(v1,v2,v3)
colnames(dfHB)<- c("No","Buah","Harga")

# Subsetting :Mengambil nilai dari suatu vektor, matriks, atau dataframe
#1. Vektor
b[1:3]
b[c(2,4)]
b <=4

#2. Matriks
f[1,1:3]
f[1,]

#3. DataFrame
dfHB$Buah
dfHB$Buah[3]
dfBuah<-data.frame(dfHB[,1:2])

#List
g <-list(1,"satu",TRUE)
g[[1]] #subsetting







