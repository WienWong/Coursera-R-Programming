
pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  
  data <- c() 
  # x <- NA
  
  for (index in id){
    rawdata <- read.csv(paste(directory, "/", sprintf("%03d", index), ".csv", sep=''))
    
    if (pollutant == "sulfate"){
      y <- c(rawdata[,2])
    }else if (pollutant == "nitrate"){
      y <- c(rawdata[,3])
    }
    data <- c(data,y)
  }
  
  meandata <- round(mean(data, na.rm = TRUE), 4)
  meandata
}


# # Test code in Console
# 
# setwd("D:/Coursera_R/rprog-data-specdata")
# 
# source("pollutantmean.R")
# 
# directory <- "D:/Coursera_R/rprog-data-specdata/specdata"
# 
# pollutantmean(directory, "sulfate", 1:10)
# # 4.0641
# 
# pollutantmean(directory, "nitrate", 70:72)
# # 1.706
# 
# pollutantmean("specdata", "nitrate", 23)
# # 1.2808
# 
# id = 1
# paste(directory, "/", sprintf("%03d", id), ".csv", sep = "")
# # "D:/Coursera_R/rprog-data-specdata/specdata/001.csv"
# 
# id = 12
# paste(directory, "/", sprintf("%03d", id), ".csv", sep = "")
# # "D:/Coursera_R/rprog-data-specdata/specdata/012.csv"
# 
# id = 211
# paste(directory, "/", sprintf("%03d", id), ".csv", sep = "")
# # "D:/Coursera_R/rprog-data-specdata/specdata/211.csv"

