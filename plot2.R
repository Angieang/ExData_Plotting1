##Creating the 2nd plot (Already installed datasets package)


plot(Powerfinal$Global_active_power~Powerfinal$Date_Time, type="l", ylab="Global Active Power (kilowatts)", xlab="")



##Copy the plot as a png file named plot2.png, with a width of 480 pixels and a height of 480 pixels
dev.copy(png, file="plot2.png", width=480, height = 480)

##Close the png device
dev.off()