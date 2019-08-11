##Creating the 3rd plot (Already installed datasets package)

plot(Powerfinal$Sub_metering_1~Powerfinal$Date_Time, type="l", ylab="Energy sub metering", xlab="", col="black")
points(Powerfinal$Sub_metering_2~Powerfinal$Date_Time, type="l", col="red")
points(Powerfinal$Sub_metering_3~Powerfinal$Date_Time, type="l", col="blue")

legend("topright", lty=1, lwd = 1, col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex=0.8)


##Copy the plot as a png file named plot3.png, with a width of 480 pixels and a height of 480 pixels
dev.copy(png, file="plot3.png", width=480, height = 480)

##Close the png device
dev.off()