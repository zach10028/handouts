## exercises Lesson 4

##1
longsurvey <- gather(tidy_survey, key = "attr", value = "val", -participant)
## ^ key and value are the names of the columns


##2
cbp_AP_23 <- fread('data/cbp15co.csv') %>% filter(NAICS == '23----') %>% select(starts_with('AP'), starts_with('FIPS'))
##^ select = takes all the values in the column, filter= takes what u wanna get

##3
cbp_21_emp <- fread('data/cbp15co.csv', na.strings = '') %>%
  filter(NAICS == '21----') %>% group_by(FIPSTATE, FIPSCTY) %>%
  summarize(EMP = sum(EMP)) %>%
  summarize(EMP = sum(EMP), counties = n())

##4
pivottable <- fread('data/cbp15co.csv', na.strings = '') %>%
  filter(str_detect(NAICS, '[0-9]{2}----')) %>%
  group_by(FIPSTATE, NAICS) %>%
  summarize(EMP = sum(EMP)) %>%
  spread(key = NAICS, value = EMP)


