setwd("~/Desktop/Coursera")
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = T )
data[,1] <- as.Date(data[,1], format = "%d/%m/%Y")
png("plot3.png", width = 480, height = 480)
d <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
##Convert time to posixct
time <- paste(d[,1], d[,2])
days <- as.POSIXct(time)
#Add 1st grpah
plot(days, d[,7], type = "l", col = 1, ylab = "Energy sub meeting")
##Add 2nd graph
lines(days, d[,8], type ="l", col = 2)
##Add 3rd graph
lines(days, d[,9], type = "l", col = 4)
##Add legend
legend("topright", c("Sub_meterign_1", "Sub_metering_2", "Sub_metering_3"), col = c(1,2, 4), lwd = c(1,1,1))
dev.off()

