#Deliverable1
#load library
library(dplyr)
#Read CSV
MechaCar_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
View (MechaCar_table)
#generate linear regression
lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_table)
#generate summary statistics
summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_table))

#Deliverable2
#Read CSV
Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
View (Suspension_Coil_table)

#Create summary table
total_summary_suspension <- Suspension_Coil_table %>% summarize(Mean_PSI= mean(PSI), Median_PSI= median(PSI), Variance_PSI= var(PSI),  SD_PSI= sd(PSI),  .groups = 'keep')
View(total_summary_suspension)

#Create a data frame
lot_summary_PSI <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI= mean(PSI), Median_PSI= median(PSI), Variance_PSI= var(PSI),  SD_PSI= sd(PSI),  .groups = 'keep')
View(lot_summary_PSI)


#Deliverable3
#Determine if the PSI across all manufacturing lots is statistically different 
#from the population mean of 1,500 pounds per square inch
#Perform t.test
PSI_t.test <- t.test(Suspension_Coil_table$PSI, mu=1500)

#Determine if the PSI for each manufacturing lot is statistically different from 
#the population mean of 1,500 pounds per square inch
t.test(subset(Suspension_Coil_table,Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension_Coil_table,Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension_Coil_table,Manufacturing_Lot=="Lot3")$PSI, mu=1500)
