# Get the data
path <- getwd()
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
p <- "household_power_consumption.zip"
if (!file.exists(path)) {dir.create(path)}
download.file(url, file.path(path, p))

# Load/Set up the data table
plotData <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

# Convert Date to class date
plotData$Date <- as.Date(plotData$Date, "%d/%m/%Y")

# Filter only required data i.e. data from Feb 1, 2007 to Feb 2, 2007
plotData <- subset(plotData,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

# Remove incomplete observation
plotData <- plotData[complete.cases(plotData),]

# Combine Date and Time column
dateTime <- paste(plotData$Date, plotData$Time)

# Name the vector
dateTime <- setNames(dateTime, "DateTime")

# Remove Date and Time column and add new dateTime column
plotData <- plotData[ ,!(names(plotData) %in% c("Date","Time"))]
plotData <- cbind(dateTime, plotData)

# Format dateTime Column
plotData$dateTime <- as.POSIXct(dateTime)