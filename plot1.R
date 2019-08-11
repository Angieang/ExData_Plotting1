##Creating the 1st plot, an histogram (Already installed datasets package)
hist(Powerfinal$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

##Copy the plot as a png file named plot1.png, with a width of 480 pixels and a height of 480 pixels
dev.copy(png, file="plot1.png", width=480, height = 480)

##Close the png device
dev.off()