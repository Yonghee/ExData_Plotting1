Sys.setlocale("LC_TIME", "en_US.UTF-8")
source("./loadDataFile.R")

myData <- loadDataFile()

plot(myData$DateTime,myData$Sub_metering_1,type="l")
lines(myData$DateTime,myData$Sub_metering_2,type="l",col="red")
lines(myData$DateTime,myData$Sub_metering_3,type="l",col="blue")