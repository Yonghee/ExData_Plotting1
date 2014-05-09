Sys.setlocale("LC_TIME", "en_US.UTF-8")
source("./loadDataFile.R")

myData <- loadDataFile()

png("plot3.png",width=480, height=480)
par(mfrow=c(1,1))
plot(myData$DateTime,myData$Sub_metering_1,type="l", xlab="" , ylab="Energy Sub Metering")
lines(myData$DateTime,myData$Sub_metering_2,type="l",col="red")
lines(myData$DateTime,myData$Sub_metering_3,type="l",col="blue")
legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_1"),col=c("black","red","blue"),lty="solid")

dev.off()