Sys.setlocale("LC_TIME", "en_US.UTF-8")
source("./loadDataFile.R")

myData <- loadDataFile()
plot(myData$DateTime,myData$Global_active_power,type="l")