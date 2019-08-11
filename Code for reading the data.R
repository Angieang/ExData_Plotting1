##Verify my working directory. Create the file on my working directory. Download and unzip the data file.
getwd()
if(!file.exists(".data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = "./data/Data.zip", method = "curl")
unzip(zipfile = "./data/Data.zip", exdir = "./data")

##Read the data and assign them with the name "Power". Display its internal structure
Power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")


##Calculating Memory Requirements ('data.frame': (rows=)2075259 obs. of  (columns)9 variables, all numeric data) 
## 2075259 x 9 x 8bytes/numeric   (It's number requires 8 bytes of memory to store)
## convert then the estimated bytes ( by / 2^20) to MB and then to GB
##We' ll need more memory (almost x2)  to read the data.


##Read the first 4 rows
head(Power, 4)

## Modify the parameters of the data and Display its internal structure
Power2 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", colClasses =c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'), na.strings = "?")
str(Power2)


##Format the dates
Power2$Date<-as.Date(Power2$Date, format = "%d/%m/%Y") 

##Subset the appropriate data (only data from the dates 2007-02-01 and 2007-02-02.)
Powerfinal<-subset(Power2, Date>="2007-02-01" & Date<="2007-02-02")

##Verify my subset (having all and only data from the dates 2007-02-01 and 2007-02-02.)
head(Powerfinal)
tail(Powerfinal)
