##Creating the 4th plot (Already installed datasets package)

##add the 1st part of the plot
par(mfrow=c(2,2))
plot(Powerfinal$Global_active_power~Powerfinal$Date_Time, type="l", ylab="Global Active Power", xlab="",cex.axis=0.8)

##add the 2nd part of the plot
plot(Powerfinal$Voltage~Powerfinal$Date_Time, type="l", ylab="Voltage", xlab="datetime", cex.axis=0.9)

##add the 3rd part of the plot
plot(Powerfinal$Sub_metering_1~Powerfinal$Date_Time, type="l", ylab="Energy sub metering", xlab="", col="black" , cex.axis=0.8)
points(Powerfinal$Sub_metering_2~Powerfinal$Date_Time, type="l", col="red")
points(Powerfinal$Sub_metering_3~Powerfinal$Date_Time, type="l", col="blue")
legend("topright", lty=1, lwd = 1, col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex
      =0.7,  bty="n")

##add the 4th part of the plot
plot(Powerfinal$Global_reactive_power~Powerfinal$Date_Time, type="l", ylab="Global_reactive_power", xlab="datetime", cex.axis=0.7)


##Copy the plot as a png file named plot4.png, with a width of 480 pixels and a height of 480 pixels
dev.copy(png, file="plot4.png", width=480, height = 480)

##Close the png device
dev.off()
