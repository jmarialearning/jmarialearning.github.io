# Parte declarativa
library(readr)
setwd("~/Dropbox/labstat") # Recordar cambiar el directorio de trabajo o no se importarán los CSVs
a01 <- read_csv("data/ubi/A-01.csv", locale = locale(decimal_mark = ","))
dw <- read_csv("data/ubi/DW.csv", locale = locale(decimal_mark = ","))
uw <- read_csv("data/ubi/UW.csv", locale = locale(decimal_mark = ","))
wa1 <- read_csv("data/ubi/WA-01.csv", locale = locale(decimal_mark = ","))
wa2 <- read_csv("data/ubi/WA-02.csv", locale = locale(decimal_mark = ","))
wa3 <- read_csv("data/ubi/WA-03.csv", locale = locale(decimal_mark = ","))
wa4 <- read_csv("data/ubi/WA-04.csv", locale = locale(decimal_mark = ","))
wa5 <- read_csv("data/ubi/WA-05.csv", locale = locale(decimal_mark = ","))
# Medias de los resultdos y los límites máximos
mean(a01$Result_Final_Txt)
mean(a01$Reporting_Limit)
#---
mean(uw$Result_Final_Txt)
mean(uw$Reporting_Limit)
#---
mean(dw$Result_Final_Txt)
mean(dw$Reporting_Limit)
#---
mean(wa1$Result_Final_Txt)
mean(wa1$Reporting_Limit)
#---
mean(wa2$Result_Final_Txt)
mean(wa2$Reporting_Limit)
#---
mean(wa3$Result_Final_Txt)
mean(wa3$Reporting_Limit)
#---
mean(wa4$Result_Final_Txt)
mean(wa4$Reporting_Limit)
#---
mean(wa5$Result_Final_Txt)
mean(wa5$Reporting_Limit)
# Gráficas de las mediciones (y) con respecto a la diferencia en días desde el accidente (x), con sus líneas de tendencia.
plot(a01$Differential, a01$Result_Final_Txt, xlab="Tiempo transcurrido (días)", ylab="Concentración de benceno")
abline(lm(a01$Result_Final_Txt~a01$Differential))
#
plot(uw$Differential, uw$Result_Final_Txt, xlab="Tiempo transcurrido (días)", ylab="Concentración de benceno")
abline(lm(uw$Result_Final_Txt~uw$Differential))
#
plot(dw$Differential, dw$Result_Final_Txt, xlab="Tiempo transcurrido (días)", ylab="Concentración de benceno")
abline(lm(dw$Result_Final_Txt~dw$Differential))
#
plot(wa1$Differential, wa1$Result_Final_Txt, xlab="Tiempo transcurrido (días)", ylab="Concentración de benceno")
abline(lm(wa1$Result_Final_Txt~wa1$Differential))
#
plot(wa2$Differential, wa2$Result_Final_Txt, xlab="Tiempo transcurrido (días)", ylab="Concentración de benceno")
abline(lm(wa2$Result_Final_Txt~wa2$Differential))
#
plot(wa3$Differential, wa3$Result_Final_Txt, xlab="Tiempo transcurrido (días)", ylab="Concentración de benceno")
abline(lm(wa3$Result_Final_Txt~wa3$Differential))
#
plot(wa4$Differential, wa4$Result_Final_Txt, xlab="Tiempo transcurrido (días)", ylab="Concentración de benceno")
abline(lm(wa4$Result_Final_Txt~wa4$Differential))
#
plot(wa5$Differential, wa5$Result_Final_Txt, xlab="Tiempo transcurrido (días)", ylab="Concentración de benceno")
abline(lm(wa5$Result_Final_Txt~wa5$Differential))
