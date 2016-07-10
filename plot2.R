## load data and read a subset using the dates 2007-02-01 and 2007-02-02

dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# subset day and global active power
#construct the plot
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot2 <- as.numeric(subSetData$Global_active_power)

#save the plot as png file
png("plot2.png", width=480, height=480)

plot(datetime, plot2, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()