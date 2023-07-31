##                    Analisis Deret Waktu
library(readxl)
data <- read_excel("D:/Kuliah/Jurusan/AnDat/Praktikum Andat/Praktikum ke-8/DATA DERET WAKTU.xlsx",sheet = "harga saham")
library(forecast)
data_1 = ts(data$`harga (Euro)`)
plot(data_1,main="Grafik Harga Saham X",ylab="Harga (Euro)",xlab="bulan",type='o')

#                                   Uji Kestasioneran
# Plot ACF
acf(data_1)

# Uji ADF
library(tseries)
adf.test(data_1)

#                                 Identifikasi Model
data_2 = diff(data_1)
plot(data_2,main="Grafik Diferensiasi Harga Saham X",ylab="Diferensiasi",xlab="bulan",type='o')
acf(data_2) # Plot ACF
adf.test(data_2) # Uji ADF

#                         Identifikasi Orde
acf(data_2, main="Grafik ACF")  # ACF
pacf(data_2, main="Grafik PACF")# PACF


#                         Metode Manual
model_ari = arima(data_1,order = c(1,1,0)) # ARIMA(1,1,0)
summary(model_ari)

model_ari = arima(data_1,order = c(0,1,1)) # ARIMA(0,1,1)
summary(model_ari)

model_ari = arima(data_1,order = c(1,1,1)) # ARIMA(1,1,1)
summary(model_ari)

#                       Metode Autoomatic
model = auto.arima(data_1)
summary(model)

#                       Uji Diagnostik
checkresiduals(model)

#                       Prediksi
(prediksi = forecast(model, h = 5))
plot(prediksi,main="Grafik Harga Saham X", ylab="Diferensiasi", xlab="bulan",type='o')
