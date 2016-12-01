###CODE USE WITH R EXERCISES SUMMER SCHOOL DATA DRIVEN, PISA 2016###

#install library to work with ggplot2 graphics

install.package ("ggplot2")

library (ggplot2)

#charge the project

project= read.csv ("dresseldata.csv")

#to show the project

project 

#calculate the mean of maximum diameter

project= project$rim_diameter_max
mean (project)

#mean is [1] 13.1

#calculate the mean of minimum diameter

project= project$rim_diameter_min
mean (project)

#mean is [1] 10.95

###calculate the frecuency of maximum and minimum diameter in our data with different graphics

#histogram to calculate the maximum diameter

hist(project$rim_diameter_max, border= "white", col= "black", main= "Frecuency of maximum diameter")

#boxplot to calculate the minimum diameter

boxplot(project$rim_diameter_min, main= "Frecuency of minimum diameter")


####using different graphic packages in R program

#qplot to see the relationship between maximum diameter and minimum diameter with the pottery workshops

qplot(x= rim_diameter_max, y= rim_diameter_min, data= project, main= "Frecuency", color= manufacture) 


#ggplot 2 to see the differences among selected pottery workshops 

#We select different types of manufacture to know the differences between pottery workshops and diameters

myData= subset(project, manufacture  %in% c("Cรกdiz fabric", "Tunisian fabric", "Dressel 20 fabric", "Dressel 24 fabric"))


#we select the type of amphorae and the manufacture

ggplot(myData, aes(x=rim_diameter_max, y=rim_diameter_min, colour= manufacture)) + geom_point() + facet_wrap(~a_name)



