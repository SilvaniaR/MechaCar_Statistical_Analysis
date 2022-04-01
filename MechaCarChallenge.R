library(dplyr)

#Deliverable 1
mechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_table)
summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_table))

# p-value: 5.35e-11
# r-squared: 0.6825

#Deliverable 2
suspension_coil_table <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)
# Create a summary data frame
total_summary <- suspension_coil_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# Create a summary data frame grouped by Manufacturing Lot
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))


