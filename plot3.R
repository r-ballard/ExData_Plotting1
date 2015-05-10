setwd("XXXXXXXXXXXXXXXX")
library(data.table)
library(lubridate)
library(dplyr)

png("plot3.png")
plot(house_Data_2day$"DateTime",house_Data_2day$"Sub_metering_1",type="n",ylab="Energy sub metering",xlab="")
lines(house_Data_2day$"DateTime",house_Data_2day$"Sub_metering_1",col="black")
lines(house_Data_2day$"DateTime",house_Data_2day$"Sub_metering_2",col="red")
lines(house_Data_2day$"DateTime",house_Data_2day$"Sub_metering_3",col="blue")
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1,
       col=c("black","red","blue")
)
dev.off()