#PLOT 1: Make a Histogram

hist(plotData$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")

# Create and save a png file with size 480 x 480
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()