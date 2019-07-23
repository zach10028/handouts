## exercises Lesson 4

##1
longsurvey <- gather(tidy_survey, key = "attr", value = "val", -participant)
## ^ key and value are the names of the columns


##2
cbp_AP_23 <- fread('data/cbp15co.csv') %>% filter(NAICS == '23----') %>% select(starts_with('AP'), starts_with('FIPS'))
##^ select = takes all the values in the column, filter= takes what u wanna get

##3




