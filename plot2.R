require(sqldf)
require(lubridate)
tbl<-read.csv.sql("household_power_consumption.txt","select * from file where Date ='1/2/2007' or Date ='2/2/2007'",sep=";")
tbl$datetime<-with(tbl,dmy(Date)+hms(Time))

#plot 2
png(filename="Plot2.png", width=480,height = 480, bg="white")
par(mar=c(5,6,4,1)+.1)
plot(tbl$datetime,tbl$Global_active_power,type="l",xlab="",ylab="Global Active Power (killowatts)")
dev.off()