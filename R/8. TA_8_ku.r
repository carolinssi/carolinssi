#PRAKTIKUM KE-8
#input data

library(readxl)
data <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-8/CPI.xlsx")
show(data)

#data deret waktu
library(forecast)
data_1 = ts(data$`CPI`)
plot(data_1,main="Grafik Nilai Ekspor Indonesia X",ylab="Harga", 
     xlab="Bulan",type='o')

#UJI KESTASIONERAN
#plot ACF
acf(data_1)
#uji ADF
library(tseries)
adf.test(data_1)

#diferensiasi data
data_2 = diff(data_1)
plot(data_2,main="Grafik Diferensiasi Harga Saham X",ylab="Diferensiasi", 
     xlab="bulan",type='o')
#uji kestasioneran data diferensiasi
acf(data_2)
adf.test(data_2)

#IDENTIFIKASI ORDE MODEL
#plot ACF
acf(data_2, main="Grafik ACF")
#plot PACF
pacf(data_2, main="Grafik PACF")

#ESTIMASI PARAMETER MODEL
#Model ARI(1,1)
model_ari = arima(data_1,order = c(1,1,0))
summary(model_ari)
#Model IMA(1,1)
model_ima = arima(data_1,order = c(0,1,1))
summary(model_ima)
#Model ARIMA(1,1,1)
model_arima = arima(data_1,order = c(1,1,1))
summary(model_arima)
#Model Auto
model = auto.arima(data_1)
summary(model)

#UJI DIAGNOSTIK
checkresiduals(model)

#PREDIKSI untuk 5 kuartal ke depan
(prediksi = forecast(model, h = 5))
plot(prediksi,main="Grafik Harga Saham X",ylab="Diferensiasi", 
     xlab="bulan",type='o')

# Laju Inflasi 


