#Scenario 3
#Determining average savings account balance in order to do targeted marketing for each group. 
savings.reformat<-gather(savings, key="Group", value="Price")
#assure all columns are reading as numeric
str(savings.reformat$Price)
#test assumptions
#test for normality
plotNormalHistogram(savings.reformat$Price)
na.omit(savings.reformat)
# normally distributed
#homogeneity of variance
bartlett.test(Price~Group, data=savings.reformat)
#p-value is greater than .05 so this meets homogeneity of variance
#meets sample size
savingsANOVA<-aov(savings.reformat$Price~savings.reformat$Group)
summary(savingsANOVA)
#There is a less than .05 p-value showing that there is a significant difference
#posthoc
pairwise.t.test(savings.reformat$Price, savings.reformat$Group, p.adjust="bonferroni")
savingsMeans<- savings.reformat %>% group_by(Group) %>% summarize(Mean = mean(Price))
savingsMeans

#This shows a significant difference between the account balances with Group A having the highest savings amount and Group C having the lowest.  This means that targeted marketing will benefit the company so they can reach each group at their level of savings.