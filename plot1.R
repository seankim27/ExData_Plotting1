my_data <- read.table('./household_power_consumption.txt', header = TRUE, sep = ';')

myDate = c("1/2/2007","2/2/2007")
my_data <- my_data[my_data$Date %in% myDate,]

DateTime <- strptime(paste(my_data$Date, my_data$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
my_data <- cbind(my_data, DateTime)

my_data$Global_active_power <- as.numeric(my_data$Global_active_power)

png('./plot1.png', height = 480, width = 480, units="px")
hist(my_data$Global_active_power, col = 'red', 
     main = 'Global Active Power', xlab = 'Global Active Power (kiloowatts)')
dev.off()

