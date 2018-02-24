# PLOT 3: 

with(plotData, {
  plot(Sub_metering_1~dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~dateTime,col="red")
  lines(Sub_metering_3~dateTime,col="blue")
})
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


# Create and save a png file with size 480 x 640
# I sized it as 480 x 640 instead, because the legends on a 480 x 480 looks cut-off.
dev.copy(png, file="plot3.png", height=480, width=640)
dev.off()