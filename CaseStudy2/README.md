# Case study 2: Systolic blood pressure and coronary heart disease

This case study demonstrates how MR-Base can be used to conduct sensitivity analyses and triangulate evidence. It is based on work by [Ference et al (2014)](https://doi.org/10.1161/HYPERTENSIONAHA.113.02734) that examined the effect of systolic blood pressure on coronary heart disease.

This repository provides the R code for this case study and instructions on how to use the MR-Base web interface. This repository also provides the results of this analysis (data downloads, graphs, and HTML reports), indexed according to the MR-Base IDs listed below.

## Using the 'TwoSampleMR' R package

The code to run this analysis is provided in the file [CaseStudy2_package.R](https://github.com/MRCIEU/mrbase_casestudies/blob/master/CaseStudy2/CaseStudy2_package.R)

Further information on the TwoSampleMR package can be found [here](https://github.com/MRCIEU/TwoSampleMR).

## Using the MR-Base web interface

1. Access the platform [here](http://www.mrbase.org/) and sign the data access agreement using a Google account.

2. Define the exposure by selecting the following from the MR-Base GWAS catalog. Specify the p-value threshold to be ‘5e-08’ and ensure ‘Perform clumping’ is ticked with the LD R squared value set to 0.001 and clumping distance set to 10000kb.

|    ID           |    Variable                                       |    First author (year)    |    Consortium    |    Sample size    |    Population    |    Sex                    |
|-----------------|---------------------------------------------------|---------------------------|------------------|-------------------|------------------|---------------------------|
|    UKB-a:360    |    Systolic   blood pressure automated reading    |    [Neale (2017)](http://www.nealelab.is/blog/2017/7/19/rapid-gwas-of-thousands-of-phenotypes-for-337000-samples-in-the-uk-biobank)      |    Neale Lab     |    317754         |    European      |    Males and   females    |

3. Define the outcome by selecting the following outcomes from the MR-Base GWAS catalog:

|    ID    |    Variable                    |    First author (year)    |    Consortium           |    Sample size    |    Population    |    Sex                    |
|----------|--------------------------------|---------------------------|-------------------------|-------------------|------------------|---------------------------|
|    7     |    Coronary heart   disease    |    [Nikpay (2015)](https://doi.org/10.1038/ng.3396)     |    CARDIoGRAMplusC4D    |    184305         |    Mixed         |    Males and   females    |

4. Specify the analysis settings:

- Set LD clumping to ‘Do not check for LD between SNPs’ (as this was done in step 2)
- Specify that LD proxies are permitted with a minimum LD R squared value of 0.8 and ensure ‘Allow palindromic SNPs?’ is ticked with the MAF threshold set to 0.3
- Set allele harmonisation to ‘Attempt to align strands for palindromic SNPs’
- Select the MR Egger, weighted median, weighted mode and inverse variance weighted methods for analysis.

5. Perform the MR analysis and save the results, including the citations that are to be referenced in any published work arising from this analysis.  

Note that the MR-Base web interface will provide the analysis code as an output if you wish to recreate your analysis in R.
