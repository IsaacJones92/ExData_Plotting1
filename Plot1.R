setwd("~/Desktop/Coursera")
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = T )
data[,1] <- as.Date(data[,1], format = "%d/%m/%Y")
png("plot2.png", width = 480, height = 480)
d <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")

##Create Histogram
hist(d[, 3], col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
