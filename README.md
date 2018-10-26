# Admixture-PCAs-and-Ancestry

## This repository contains several scripts to visualize and estimate ancestry. Before moving to R to plot and visualize. You must first obatin the relevant files from PLINK and ADMIXTURE

### Plink
#### Load most current version of PLINK on the terminal and run the following command on your file. 
```
./plink --vcf --myfile.vcf --pca
```
#### You will get two output files: myfile.eigenvec and myfile.eigenval we will use the .eigenvec file to plot the principal components in R. 
