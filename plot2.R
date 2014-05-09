Sys.setlocale("LC_TIME", "en_US.UTF-8")
source("./loadDataFile.R")

myData <- loadDataFile()
png("plot2.png",width=480, height=480)
par(mfrow=c(1,1))
plot(myData$DateTime,myData$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power(kilowatts)")

dev.off()