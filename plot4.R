Sys.setlocale("LC_TIME", "en_US.UTF-8")
source("./loadDataFile.R")

# loadDataFile function is defined in loadDataFile.R code file
myData <- loadDataFile()

png("plot4.png",width=480, height=480)
par(mfrow=c(2,2))

plot(myData$DateTime,myData$Global_active_power,type="l",xlab="",ylab="Global Active Power")


plot(myData$DateTime,myData$Voltage,type="l",xlab="datetime",ylab="Volage")

plot(myData$DateTime,myData$Sub_metering_1,type="l",xlab="",ylab="Energe Sub Metering")
lines(myData$DateTime,myData$Sub_metering_2,type="l",col="red")
lines(myData$DateTime,myData$Sub_metering_3,type="l",col="blue")
legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"),lty="solid")

plot(myData$DateTime,myData$Global_reactive_power,type="l",xlab="datetime",ylab="Global_Reactive_Power")

dev.off()