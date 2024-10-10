library(data.table)
library(tidyverse)
library(car)
library(vtable)
library(broom)


df <- fread("Boneville2.csv")

df = df[Location == 'Boneville']

regression = lm(RPMPeak ~ EGT + DA + Head, data = df)

summary(regression)
