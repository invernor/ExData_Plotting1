
## load data and read a subset using the dates 2007-02-01 and 2007-02-02

dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#construct the plot
plot1 <- as.numeric(subSet$Global_active_power)

#save the plot as png file (480x480)
png("plot1.png", width=480, height=480)

hist(plot1, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
