

##Ancestry barplot

##Set WD and load pkgs 
setwd("~/Desktop/Lice/")
library(ggplot2)
library(ggfortify)


lice_anc <- read.table("combined_snps.flt.maf.no_chr.plink.2.Q") #load ADMIXTURE results
lice_mtx <- t(as.matrix(lice_anc)) #transpose table and transform to matrix
row.names(lice_mtx)<- c("Body", "Head") #add names to rows 
Bp <- barplot(lice_mtx, col = c("darkorange2", "mediumblue"), 
        xlab="Individual #", ylab="Ancestry", border=NA, main = "Head and body lice admixture", legend.text = T, ) ##barplot
colnames <- t(as.matrix(lice_admx$Type))
colnames(lice_mtx) <- colnames

#Plotting only specific individuals
Bp1 <-barplot(lice_mtx[,colnames(lice_mtx) == "F1"], col = c("darkorange2", "mediumblue"), xlab = "Individual #", ylab = "Ancestry", border=NA, main = "F1")
Bp2 <-barplot(lice_mtx[,colnames(lice_mtx) == "F2"], col = c("darkorange2", "mediumblue"), xlab = "Individual #", ylab = "Ancestry", border=NA, main = "F2")
Bp3 <-barplot(lice_mtx[,colnames(lice_mtx) == "F3"], col = c("darkorange2", "mediumblue"), xlab = "Individual #", ylab = "Ancestry", border=NA, main = "F3")
