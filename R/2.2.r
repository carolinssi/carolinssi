library(readxl)
estates <-read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Cesium2.xlsx" )

summary(estates$`Palm Kernel`)

# 1. scatterplot
# plot(x, y, main="judul", xlab="judul sumbu x", ylab="judul sumbu y")
plot(estates$Coffee, estates$Tea, main="Scatterplot Produksi Kopi Terhadap Teh (ton)", xlab="Kopi", ylab="Teh")

# 2. dotplot
# plot(x, type="o", main="judul",xlab="judul sumbu x",ylab="judul sumbu y")
plot(estates$`Palm Oil`,type = "o",main="Diagram Garis Produksi Minyak Kelapa",xlab="Tahun ke-", ylab="minyak kelapa(ton)")

# 3. histogram
# hist(data, freq, main="judul",xlab="judul sumbu x",ylab="judul sumbu y")
# freq = TRUE (frekuensi), FALSE (frekuensi relatif)
hist(Cesium$V1,freq=T, main="Laju Pencacahan Cs-137", xlab="Laju (per/ 10detik)", ylab="Frekuensi")

# 4. steam leaf
# stem(data)
stem(Cesium$V1)

# 5. boxplot
# boxplot(data, horizontal=T, main="judul")
boxplot(Cesium$V1, horizontal=T, main="Laju Pencacahan Cs-137")

# 6. pp plot
#install.packages("CircStats")
library(CircStats)
pp.plot(Cesium$V1, ref.line=TRUE)


# 6. qq plot
qqnorm(Cesium$V1)
qqline(Cesium$V1, col=2)







