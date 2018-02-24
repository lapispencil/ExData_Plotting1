#PLOT 4: 2 x 2 Plot/Matrix

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(plotData, {
  plot(Global_active_power~dateTime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  plot(Voltage~dateTime, type="l", 
       ylab="Voltage (volt)", xlab="")
  plot(Sub_metering_1~dateTime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~dateTime,col='Red')
  lines(Sub_metering_3~dateTime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=c(1,1,1), bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~dateTime, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="")
})

# Create and save a png file with size 480 x 800
# I sized it as 480 x 800 instead, because the legends on a 480 x 480 looks cut-off/out of place.
dev.copy(png,"plot4.png", width=800, height=480)
dev.off()
