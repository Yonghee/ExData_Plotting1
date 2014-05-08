
source("./loadDataFile.R")

myData <- loadDataFile()
hist(myData$Global_active_power,col="red",xlab="Global Activity Power(Killowatts)",main="Global Activaty Power")

