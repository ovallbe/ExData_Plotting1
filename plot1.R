###########Graph 1

png("graphs/plot1.png", width = 480, height = 480)
hist(sel_data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()
