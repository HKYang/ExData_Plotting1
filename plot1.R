# The dataset was downloaded from
#   https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip@##
# The unzipped file "household_power_consumption.txt"
#   was saved in current local directory. 
# The dataset can be read into a data.frame in R, whose columns are
#   Date
#   Time
#   Global_active_power
#   Global_reactive_power
#   Voltage
#   Global_intensity
#   Sub_metering_1
#   Sub_metering_2
#   Sub_metering_3

# Retrieve data for the 2-day period from 2007-02-01 to 2007-02-02
powerData <- read.table("household_power_consumption.txt",
                        sep=";", na.strings ="?", 
				    header=TRUE, stringsAsFactors=FALSE)
powerData = subset(
    powerData, 
    powerData$Date == "1/2/2007" | powerData$Date == "2/2/2007")


# Plot the histogram for Global_active_power
hist(powerData$Global_active_power,  
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     col = "red", 
     border = "black")

# Save the plot as a 480x480 PNG file
dev.copy(png, file = "plot1.png", width=480, height=480) 
dev.off()  



