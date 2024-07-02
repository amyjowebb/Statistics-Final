#Scenario 1
#insurance company wants to know if the rate of fraud is higher than the hypothetical level of 16%

prop.test(x = 28, n = 94, p = 0.5, alternative = "two.sided", correct = FALSE)

#The p-value is way less than .05 so it shows that the number of people who are "not as disabled" is not equal to those that are. 
#According to the sample estimates the percentage of people that are "not as disabled" is 30% which is much greater than the hypothetical 16% that the insurance company uses for their processes and policies.