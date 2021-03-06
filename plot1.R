houshold=read.table(file="household_power_consumption.txt", header=TRUE, sep=";", as.is=TRUE, na.strings="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
wantedData=subset(houshold, Date=="1/2/2007"| Date=="2/2/2007")
hist(wantedData$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.copy(png, file="plot1.png")
dev.off()