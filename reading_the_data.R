rm(list = ls())
packages <- c("data.table")
sapply(packages, require, character.only=TRUE, quietly=TRUE)
setwd("~/Dropbox/Coursera/ExploratoryAnalysis/Project1")
# Path to local github repo
# setwd("/Users/kgardner1/GitHub/ExData_Plotting1")

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
f <- file.path(getwd(), "2Fhousehold_power_consumption.zip")
# download.file(url, f) # Download the dataset

DT <- data.table(fread(unzip("2Fhousehold_power_consumption.zip"))) #  Read in data as a data table
DT2 <- DT[Date=="2/1/2007"|Date=="2/2/2007", ] # filter rows of the data table
rm(DT)
str(DT2)
DT2[,dateTime:= as.POSIXct(paste(Date, Time), format="%m/%d/%Y %H:%M:%S")] # new variable for for Date/Time
DT2[, Global_active_power:=as.numeric(Global_active_power)] # change to numeric
# DT2[, Global_reactive_power:=as.numeric(Global_reactive_power)] # change to numeric
# DT2[, Voltage:=as.numeric(Voltage)] # change to numeric
# DT2[, Global_intensity:=as.numeric(Global_intensity)] # change to numeric
DT2[, Sub_metering_1:=as.numeric(Sub_metering_1)] # change to numeric
DT2[, Sub_metering_2:=as.numeric(Sub_metering_2)] # change to numeric
DT2[, Sub_metering_3:=as.numeric(Sub_metering_3)] # change to numeric
str(DT2)

