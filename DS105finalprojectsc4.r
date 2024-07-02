#Scenario 4
#Gauging public sentiment about a school bond

#two-proportion z test against the whole.  
prop.test(x = c(545, 203), n = c(748, 748), alternative = "two.sided")
#the p-value is greater than .05 so there is a significant difference between those in favor and those opposed to the school bond.
#will break down between families with school aged children as opposed to families with school aged children.
#with school aged children
prop.test(x = c(374, 129), n = c(545, 203), alternative = "two.sided")
#without school aged children
prop.test(x = c(171, 74), n = c(545, 203), alternative = "two.sided")
#both tests result in p-values over .05 so there is not a significant difference in the families whether or not they have school aged children. 