setwd("~/Desktop/Coursera")
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = T )
data[,1] <- as.Date(data[,1], format = "%d/%m/%Y")
png("plot3.png", width = 480, height = 480)
##Subset Data based on date
d <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")

##Convert Date to posixct
time <- paste(d[,1], d[,2])
posTime <- as.POSIXct(time)
par(mfrow = c(2,2))
#plot 1
plot(posTime, d[,3], type = "l", ylab = "Global Active Power", xlab = "")
#plot 2
plot(posTime, d[,5], type = "l", ylab = "voltage", xlab = "datetime")
#plot 3
plot(posTime, d[,7], type = "l", ylab = "Energy sub metering", xlab = "")
lines(posTime, d[,8], type = "l", col = 2)
lines(posTime, d[,9], type = "l", col = 4)
legend("topright", c("Sub_meterign_1", "Sub_metering_2", "Sub_metering_3"), col = c(1,2, 4), lwd = c(1,1,1))
#plot 4
plot(posTime, d[,4], type = "l", ylab = "Global_reactive_power", xlab = "datetime")

dev.off()



