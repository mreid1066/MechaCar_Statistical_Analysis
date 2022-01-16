mpg_raw_data <- read.csv(file='MechaCar_mpg.csv',stringsAsFactors = F) #Read in MechaCar_mpg.csv file
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_raw_data) #Multiple Line Linear Regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_raw_data)) #Summary of Linear Regression
suspcoil_raw_data <- read.csv(file='Suspension_Coil.csv',stringsAsFactors = F) #Read in Suspension_Coil.csv file
total_summary <- suspcoil_raw_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- suspcoil_raw_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
t.test(suspcoil_raw_data$PSI,mu=1500) #Perform t-test on whole data set
lot1_sc <- subset(suspcoil_raw_data, Manufacturing_Lot == "Lot1") # Filter Lot1 
t.test(lot1_sc$PSI,mu=1500) # Lot1 t-test
lot2_sc <- subset(suspcoil_raw_data, Manufacturing_Lot == "Lot2") # Filter Lot2
t.test(lot2_sc$PSI,mu=1500) # Lot2 t-test
lot3_sc <- subset(suspcoil_raw_data, Manufacturing_Lot == "Lot3") # Filter Lot3
t.test(lot3_sc$PSI,mu=1500) # Lot3 t-test

