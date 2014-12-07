
###########Graph 3

png("graphs/plot3.png", width = 480, height = 480)
plot(sel_data$DateTime, sel_data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(sel_data$DateTime, sel_data$Sub_metering_2, type="l", col="red")
lines(sel_data$DateTime, sel_data$Sub_metering_3, type="l", col="blue")
legend("topright", lwd=2, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
