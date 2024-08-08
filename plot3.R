
png('./plot3.png', height = 480, width = 480, units="px")
plot(my_data$DateTime, my_data$Sub_metering_1, type = 'l', xlab = " ", ylab = 'Energy sub metering')
lines(my_data$DateTime, my_data$Sub_metering_2, col = 'red')
lines(my_data$DateTime, my_data$Sub_metering_3, col = 'blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'), lty = 'solid')
dev.off()
