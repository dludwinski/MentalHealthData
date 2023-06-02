# Info 
#
# https://www.matthieugomez.com/statar/import-data.html
#
# Data
# https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Datasets/NAMCS/
# ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/Dataset_Documentation/NAMCS/stata/


#This package allows us to import SAS and STATA files
install.packages("rio")
library(rio)

filelocation <- "E:\\OneDrive\\Downloads\\namcs2018\\NAMCS2018-stata.dta"



NAMCS2018 <- import(filelocation)


#setwd("E:\\OneDrive\\Docs\\Research_db\\Hospital Standard Charges")



