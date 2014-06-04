setwd("~/Desktop/Coursera")
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = T )
data[,1] <- as.Date(data[,1], format = "%d/%m/%Y")
png("plot2.png", width = 480, height = 480)
d <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")

##Get the days + time
fulltime <- paste(d[,1], d[,2])
##Convert to posixct format
days <- as.POSIXct(fullTime)
##Plot time vs Active Power
plot(days, d[,3], type = "l", ylab = "Global Active Power (killowatts)", xlab = "")
dev.off()
