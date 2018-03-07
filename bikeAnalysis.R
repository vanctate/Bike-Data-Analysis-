#Van Tate

#this program uses the the file BikeData.csv to determine average time spend riding for men, how many people are daily riders, how many daily riders are m/f, the average age
#of daily riders, the average age of just the male daily riders, and the average age of the female daily riders

#load data set 
bike<-BikeData

#create a subset of the data about males, 90/121 cyclists are males
males<-bike[bike$gender =='M',]

#create vector of male time riding (minutes)
male_times<-males$time

#average male time riding = 26.2 (minutes)
mean(male_times)

#make a new table to show how many daily riders are in dataset
table(bike$cyc_freq)

#create a data file that includes only daily riders, 47/121 are daily riders
dailyRiders<-bike[bike$cyc_freq == "Daily",]

#make a subset of daily riders that are men, 38/47 daily riders are men
menDaily<-dailyRiders[dailyRiders$gender == "M",]

#get ages of male daily riders
menDAges<-menDaily$age

#average the age of male daily riders = 38
mean(menDAges)

#make subset of daily riders that are women, 9/47 daily riders are women
femDaily<-dailyRiders[dailyRiders$gender == "F",]

#get ages of female daily riders
femDAges<-femDaily$age

#average daily female rider age = 32.6
mean(femDAges)

#make a table showing male/female daily riders
table(dailyRiders$gender)

#make a vector of the ages of all daily riders
ages<-dailyRiders$age

#average age of daily all riders = 33.7
mean(ages)
