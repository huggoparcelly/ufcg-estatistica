
if(!require(pacman)) install.packages("pacman")
library(pacman)

pacman::p_load(readxl, dplyr, ggplot2, car, rstatix, lmtest, ggpubr)

install.packages("haven")
library(haven)
# read_excel() from: readxl
getwd()
dados <- read_dta("chdsmetric.dta")
View(dados)           # Visualizacao dos dados em janela separada

# From: dplyr
glimpse(dados)        # Visualizacao de um resumo dos dados

filtrados <- select(dados, bwtkg, gestwks, mageyrs, mheightcm)

View(filtrados)

plot(filtrados)

pairs(filtrados)

cor(filtrados)

ggplot(filtrados, aes(x=bwtkg, y=gestwks)) + 
  geom_point()

ggplot(filtrados, aes(x=bwtkg, y=mageyrs)) + 
  geom_point()

ggplot(filtrados, aes(x=bwtkg, y=mheightcm)) + 
  geom_point()

cor.test(filtrados$bwtkg, filtrados$gestwks)

cor.test(filtrados$bwtkg, filtrados$mageyrs)

cor.test(filtrados$bwtkg, filtrados$mheightcm)
