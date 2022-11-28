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
