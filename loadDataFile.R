loadDataFile <- function(){
    library(plyr)
    fileName <- "./data/household_power_consumption.txt"
    rawData <- read.csv(file = fileName, sep=";", header=T,stringsAsFactors=F)
     
    # subset data 
    resultData <- subset(rawData, Date=="1/2/2007" | Date=="2/2/2007")
    
    # numeric column cleaning
    for(colId in 3:9) {
        resultData[,colId] <-  gsub("\\?",NA, resultData[,colId])
        resultData[,colId] <- as.numeric(resultData[,colId])
    }
    
    #Date and Time column convert to Date/Column classes.
    tmpVect <-  apply(as.data.frame(resultData[1:2],stringsAsFactors=F),1, paste, collapse=" ")
    timeVect <-  strptime(tmpVect,"%d/%m/%Y %H:%M:%S")
    
    resultData$Date <- as.Date(resultData$Date, format="%d/%m/%Y")
    
    #finaly getting tidy date set
    resultData <- cbind(timeVect,resultData)
    colnames(resultData)[1] <- "DateTime"
    rownames(resultData) <- NULL
    return(resultData)
}