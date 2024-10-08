png('./plot4.png', height = 480, width = 480, units="px")
par(mfrow = c(2,2), pty = 's', mar = c(4,4,2,2))
plot(my_data$DateTime, my_data$Global_active_power, type = 'l', xlab = " ", ylab = 'Global Active Power')
plot(my_data$DateTime, my_data$Voltage, type = 'l', xlab = "datetime", ylab = 'Voltage')
plot(my_data$DateTime, my_data$Sub_metering_1, type = 'l', xlab = " ", ylab = 'Energy sub metering')
lines(my_data$DateTime, my_data$Sub_metering_2, col = 'red')
lines(my_data$DateTime, my_data$Sub_metering_3, col = 'blue')
legend('topright', bty = 'n', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'), lty = 'solid')
plot(my_data$DateTime, my_data$Global_reactive_power, type = 'l', xlab = "datetime", ylab = 'Global_reactive_power')
dev.off()
