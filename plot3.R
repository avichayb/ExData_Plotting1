require(sqldf)
require(lubridate)
tbl<-read.csv.sql("household_power_consumption.txt","select * from file where Date ='1/2/2007' or Date ='2/2/2007'",sep=";")
tbl$datetime<-with(tbl,dmy(Date)+hms(Time))

#plot 3
png(filename="Plot3.png", width=480,height = 480, bg="white")
par(mar=c(5,6,4,1)+.1)
plot(tbl$datetime,tbl$Sub_metering_1,type="l",xlab="",ylab = "Energy sub metering")
lines(tbl$datetime,tbl$Sub_metering_2,col="red")
lines(tbl$datetime,tbl$Sub_metering_3,col="blue")
legend('topright',c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
dev.off()