# Deliverable 1

library(dplyr)

mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F) # read the csv file as dataframe

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df) # generate multiple line regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)) # generate summary statistics



# Deliverable 2

susp_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F) # reading in the csv file

total_summary <- susp_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) # create summary statistics for the full dataset

lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') # summary statistics by lot



# Deliverable 3

t.test(susp_coil$PSI, mu=1500) # T-test for all coils
t.test(subset(susp_coil$PSI,susp_coil$Manufacturing_Lot=='Lot1'), mu=1500)
t.test(subset(susp_coil$PSI,susp_coil$Manufacturing_Lot=='Lot2'), mu=1500)
t.test(subset(susp_coil$PSI,susp_coil$Manufacturing_Lot=='Lot3'), mu=1500)
