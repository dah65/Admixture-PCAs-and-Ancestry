# Ancestry estimation - PCAs and Barplots

## This repository contains several scripts to visualize and estimate ancestry. Before moving to R to plot and visualize you must first obatin the relevant files from PLINK and ADMIXTURE

### PLINK
The principal components analysis will be run on plink.

Make sure all the files, including the plink execution file is in the same directory. 
The commmand below is the general command to run the PCA. Additional flags might be needed depending on the formatting of your files. i.e., if your data is not organized on chromosomes then you would add the --allow-extra-chr etc. 

Load most current version of PLINK on the terminal and run the following command on your file. 
```
./plink --vcf --myfile.vcf --pca
```
You will get two output files: myfile.eigenvec and myfile.eigenval we will use the .eigenvec file to plot the principal components in R.

### ADMIXTURE
The ancestry proportions will be estimated by the ADMIXTURE software. The command to estimate admixture is 
```
./admixture myfile.bed 2
```
The number at the end of the line represents the number of ancestral populations you would like to use to run the analysis. You will recieve two output files myfile.P and myfile.Q. We will use the .Q file plot the ancestry proportions. 

