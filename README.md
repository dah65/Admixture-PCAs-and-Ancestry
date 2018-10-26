# Ancestry estimation - PCAs and Barplots

## This repository contains several scripts to visualize and estimate ancestry. Before moving to R to plot and visualize you must first obatin the relevant files from PLINK and ADMIXTURE

### Plink
#### The principal components analysis will be run on plink
#### make sure all the files, including the plink execution file is in the same directory
#### The commmand below is the general command to run the PCA. Additional flags might be needed depending on the formatting of your files. i.e., if your data is not organized on chromosomes then you would add the --allow-extra-chr
#### Load most current version of PLINK on the terminal and run the following command on your file. 
```
./plink --vcf --myfile.vcf --pca
```
#### You will get two output files: myfile.eigenvec and myfile.eigenval we will use the .eigenvec file to plot the principal components in R.
