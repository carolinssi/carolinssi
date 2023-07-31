library(readxl)
Cesium <-read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Cesium.xlsx",range ="B2:B32" )

#STATISTIKA DESKRIPTIF
summary(Cesium)

install.packages("Hmisc")
library(Hmisc)
describe(Cesium)

install.packages("pastecs")
library(pastecs)
stat.desc(Cesium)



install.packages("psych")
library(psych)
describe(Cesium)


 (jumlah=sum(Cesium))
(modus=names(sort(-table(Cesium)))[1])





