
getwd()
setwd(.\\)

if(!file.exists("Exp_Data_An_Project_1")){dir.create("Exp_Data_An_Project_1")}
setwd(".\\Exp_Data_An_Project_1")

data_link=getURL("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip")

if(!file.exists("data")){dir.create("data")}
if(!file.exists("graphs")){dir.create("graphs")}

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",".\\data\\household_power_consumption.zip", mode="wb")

file_path <- paste(getwd(),".\\data\\household_power_consumption.zip", sep = "")

txt_file_path <- paste(getwd(),".\\data\\household_power_consumption.txt", sep = "")

if(!file.exists(txt_file_path)){unzip(file_path, list = FALSE, overwrite = FALSE, exdir = ".//data")}

main_data <- read.table(txt_file_path, header=TRUE, sep=";" ,na="?")

main_data$Date <- as.Date(main_data$Date, "%d/%m/%Y")

sel_dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")

sel_data <-subset(main_data,main_data$Date %in% sel_dates)

remove(main_data)

save(sel_data,file=".//data//selected_data.RData")

sel_data$DateTime <-as.POSIXct(paste(sel_data$Date,sel_data$Time))
