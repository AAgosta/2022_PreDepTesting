library(tidyverse)
library(ggplot2)
library(lubridate)
library(dplyr)
library(tibble)

#####receiver 2015-6004
air1 <- read.csv("data/air/156004_220104_132346_P_updated.csv")
#air1_fill <- air1 [-c(1:7), ] # removed the top 7 rows that had information I did not need but did not renumber the rows
air1_df <- slice (air1,9:52831) #keeping certain rows I want and renumbers the rows
air1_df <-air1_df[,c(2:4)] # selecting certain columns I want
#updating column names
names(air1_df)[names(air1_df) == "X"] <- "Rec_SN" 
names(air1_df)[names(air1_df) == "X.1"] <- "DateTime"
names(air1_df)[names(air1_df) == "X.2"] <- "TagCode"

air1_df$Rec_SN<-as.factor(air1_df$Rec_SN)
air1_df$TagCode<-as.factor(air1_df$TagCode)
air1_df$DateTime<-as.POSIXct(air1_df$DateTime,format="%m/%d/%Y %H:%M:%S") #manually updated this differently than the other csv's in this document

air1_filter <- air1_df[!(air1_df$TagCode=="G72ffffff"),] %>%
  filter(air1_filter >= as.POSIXct("2022-01-19 13:12:02") & air1_filter <= as.POSIXct("2022-01-28 13:35:00")) #using lubridate package, I was able to filter the df by a date range
#add column for air vs water
air1_filter$location <- "Air"



#####receiver 2015-6005
air2 <- read.csv("air/156005_220106_150701_P - Copy.csv")
#air1_fill <- air1 [-c(1:7), ] # removed the top 7 rows that had information I did not need but did not renumber the rows
air2_df <- slice (air2,9:52831) #keeping certain rows I want and renumbers the rows
air2_df <-air2_df[,c(2:4)] # selecting certain columns I want
#updating column names
names(air2_df)[names(air2_df) == "X"] <- "Rec_SN" 
names(air2_df)[names(air2_df) == "X.1"] <- "DateTime"
names(air2_df)[names(air2_df) == "X.2"] <- "TagCode"

air2_df$Rec_SN<-as.factor(air2_df$Rec_SN)
air2_df$TagCode<-as.factor(air2_df$TagCode)
air2_df$DateTime<-as.POSIXct(air2_df$DateTime,format="%Y-%m-%d %H:%M:%S") #this DateTime set up is different from air1 because I manually updated it outside of R

air2_filter <- air2_df[!(air2_df$TagCode=="G72ffffff"),] %>%
  filter(DateTime>=as.POSIXct("2022-01-11 15:55:00")& DateTime <= as.POSIXct("2022-01-19 10:22:00")) #using lubridate package, I was able to filter the df by a date range. originally was using as.Date but it did not factor in the time
#add column for air vs water
air2_filter$location <- "Air"



#####receiver 2015-6036
air3 <- read.csv("air/156036_220119_134143_P - Copy.csv")
#air1_fill <- air1 [-c(1:7), ] # removed the top 7 rows that had information I did not need but did not renumber the rows
air3_df <- slice (air3,9:52831) #keeping certain rows I want and renumbers the rows
air3_df <-air3_df[,c(2:4)] # selecting certain columns I want
#updating column names
names(air3_df)[names(air3_df) == "X"] <- "Rec_SN" 
names(air3_df)[names(air3_df) == "X.1"] <- "DateTime"
names(air3_df)[names(air3_df) == "X.2"] <- "TagCode"

air3_df$Rec_SN<-as.factor(air3_df$Rec_SN)
air3_df$TagCode<-as.factor(air3_df$TagCode)
air3_df$DateTime<-as.POSIXct(air3_df$DateTime,format="%Y-%m-%d %H:%M:%S") #this DateTime set up is different from air1 because I manually updated it outside of R

air3_filter <- air3_df[!(air3_df$TagCode=="G72ffffff"),] %>%
  filter(DateTime>=as.POSIXct("2022-01-11 15:55:00")& DateTime <= as.POSIXct("2022-01-19 10:22:00")) #using lubridate package, I was able to filter the df by a date range. originally was using as.Date but it did not factor in the time
#add column for air vs water
air3_filter$location <- "Air"



#####receiver 2017-6013
air4 <- read.csv("air/176013_220118_074837_P - Copy.csv")
#air1_fill <- air1 [-c(1:7), ] # removed the top 7 rows that had information I did not need but did not renumber the rows
air4_df <- slice (air4,9:52831) #keeping certain rows I want and renumbers the rows
air4_df <-air4_df[,c(2:4)] # selecting certain columns I want
#updating column names
names(air4_df)[names(air4_df) == "X"] <- "Rec_SN" 
names(air4_df)[names(air4_df) == "X.1"] <- "DateTime"
names(air4_df)[names(air4_df) == "X.2"] <- "TagCode"

air4_df$Rec_SN<-as.factor(air4_df$Rec_SN)
air4_df$TagCode<-as.factor(air4_df$TagCode)
air4_df$DateTime<-as.POSIXct(air4_df$DateTime,format="%Y-%m-%d %H:%M:%S") #this DateTime set up is different from air1 because I manually updated it outside of R

air4_filter <- air4_df[!(air4_df$TagCode=="G72ffffff"),] %>%
  filter(DateTime>=as.POSIXct("2022-01-11 15:55:00")& DateTime <= as.POSIXct("2022-01-19 10:22:00")) #using lubridate package, I was able to filter the df by a date range. originally was using as.Date but it did not factor in the time
#add column for air vs water
air4_filter$location <- "Air"



