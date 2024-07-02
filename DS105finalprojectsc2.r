#Scenario 2
#Comparing antiseptic usage across 3 clinics
antiseptic2.expanded<-antiseptic[rep(row.names(antiseptic), antiseptic$Number.of.applications), 1:2]
#chi-square
CrossTable(antiseptic2.expanded$Clinic, antiseptic2.expanded$Antiseptic.Type, fisher=TRUE, chisq = TRUE, expected = TRUE, sresid=TRUE, format="SPSS")

#p-value is larger than .05 so there is no significance between the pharmacies and the types of antiseptics they prescribed.