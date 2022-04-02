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

#Deliverable 3
# Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(suspension_coil_table$PSI, mu = 1500)

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
Lot1 = subset(suspension_coil_table, Manufacturing_Lot == 'Lot1')
Lot2 = subset(suspension_coil_table, Manufacturing_Lot == 'Lot2')
Lot3 = subset(suspension_coil_table, Manufacturing_Lot == 'Lot3')


t.test(Lot1$PSI, mu = 1500) 
# p-value = 1
t.test(Lot2$PSI, mu = 1500)
# p-value = 0.6072
t.test(Lot3$PSI, mu = 1500)
# p-value = 0.04168