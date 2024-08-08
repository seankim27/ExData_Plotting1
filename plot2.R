png('./plot2.png', height = 480, width = 480, units="px")
plot(my_data$DateTime, my_data$Global_active_power, type = 'l',
     xlab = " ", ylab = 'Global Active Power (kilowatts)')
dev.off()
