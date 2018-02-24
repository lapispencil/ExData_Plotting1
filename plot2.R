#PLOT 2: Plot of Global Active Power vs Date

plot(plotData$Global_active_power~plotData$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

# Create and save a png file with size 480 x 480
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()