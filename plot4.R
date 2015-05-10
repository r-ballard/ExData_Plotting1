setwd("XXXXXXXXXXXXXXXX")
library(data.table)
library(lubridate)
library(dplyr)


png("plot4.png")
par(mfrow=c(2,2))

hist(house_Data_2day$"Global_active_power",col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")

plot(house_Data_2day$"DateTime",house_Data_2day$"Voltage",type="n",ylab="Global Active Power (kilowatts)",xlab="")
lines(house_Data_2day$"DateTime",house_Data_2day$"Voltage")

plot(house_Data_2day$"DateTime",house_Data_2day$"Sub_metering_1",type="n",ylab="Energy sub metering",xlab="")
lines(house_Data_2day$"DateTime",house_Data_2day$"Sub_metering_1",col="black")
lines(house_Data_2day$"DateTime",house_Data_2day$"Sub_metering_2",col="red")
lines(house_Data_2day$"DateTime",house_Data_2day$"Sub_metering_3",col="blue")
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1,
       col=c("black","red","blue"),
       bty="n"
)



plot(house_Data_2day$"DateTime",house_Data_2day$"Global_reactive_power",type="n",xlab="")
lines(house_Data_2day$"DateTime",house_Data_2day$"Global_reactive_power")
dev.off()
