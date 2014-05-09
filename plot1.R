
source("./loadDataFile.R")

# loadDataFile function is defined in loadDataFile.R code file
myData <- loadDataFile()

#Draw Graph

png("plot1.png",width=480, height=480)
par(mfrow=c(1,1))
hist(myData$Global_active_power,col="red",
     xlab="Global Activity Power(killowatts)",
     main="Global Activaty Power")
dev.off()
