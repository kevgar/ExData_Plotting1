# setwd("~/Dropbox/Coursera/ExploratoryAnalysis/Project1")
setwd("/Users/kgardner1/GitHub/ExData_Plotting1")
plot2 <- function() {
        png(file="plot2.png", width=480, height=480)
        plot(DT2$dateTime, DT2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
        dev.off()
}
plot2()

