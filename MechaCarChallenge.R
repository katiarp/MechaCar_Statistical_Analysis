#load library
library(dplyr)
#Read CSV
MechaCar_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
View (MechaCar_table)
#generate linear regression
lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_table)
#generate summary statistics
summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_table))

