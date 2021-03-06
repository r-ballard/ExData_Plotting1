setwd("XXXXXXXXXXXXXXXX")
library(data.table)
library(lubridate)
library(dplyr)


house_Data<-read.table("household_power_consumption.txt",sep=";",na.strings="?",header=TRUE)
house_Data$"Date"<-as.Date(house_Data$"Date","%d/%m/%Y")

house_Data_2day<-subset(house_Data,house_Data$"Date"=="2007-02-01"|house_Data$"Date"=="2007-02-02")

house_Data_2day=mutate(house_Data_2day,
                       DateTime=paste(Date, Time))
house_Data_2day$DateTime<-ymd_hms(house_Data_2day$DateTime)

png("plot1.png")
hist(house_Data_2day$"Global_active_power",col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()