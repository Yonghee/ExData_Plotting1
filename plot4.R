Sys.setlocale("LC_TIME", "en_US.UTF-8")
source("./loadDataFile.R")

myData <- loadDataFile()

par(mfrow=c(2,2))

plot(myData$DateTime,myData$Global_active_power,type="l")

plot(myData$DateTime,myData$Voltage,type="l")

plot(myData$DateTime,myData$Sub_metering_1,type="l")
lines(myData$DateTime,myData$Sub_metering_2,type="l",col="red")
lines(myData$DateTime,myData$Sub_metering_3,type="l",col="blue")

plot(myData$DateTime,myData$Global_reactive_power,type="l")