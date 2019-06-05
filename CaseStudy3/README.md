# Case study 3: HMGCR and type 2 diabetes

This case study demonstrates how MR-Base can be used to replicate a study and appraise a potential intervention. It is based on work by [Swerdlow et al (2015)](https://doi.org/10.1016/S0140-6736(14)61183-1) that investigated the effect of 3-hydroxy-3-methylglutaryl-CoA reductase (HMGCR), the target of statins, on risk of type 2 diabetes.

This repository provides the R code for this case study and instructions on how to use the MR-Base web interface. This repository also provides the results of this analysis (data downloads, graphs, and HTML reports), indexed according to the MR-Base IDs listed below.

## Using the 'TwoSampleMR' R package

The code to run this analysis is provided in the file [CaseStudy3_package.R](https://github.com/MRCIEU/mrbase_casestudies/blob/master/CaseStudy3/CaseStudy3_package.R)

Further information on the TwoSampleMR package can be found [here](https://github.com/MRCIEU/TwoSampleMR).

## Using the MR-Base web interface

1. Access the platform [here](http://www.mrbase.org/) and sign the data access agreement using a Google account.

2. Define the exposure by uploading the file [CaseStudy3_instrument.csv](https://github.com/MRCIEU/mrbase_casestudies/blob/master/CaseStudy3/CaseStudy3_instrument.csv). Specify that the file is separated by commas and fill in the form to map the column names to those supplied in the file. Columns not included in the file can be left blank in the mapping. The instrument file should look like the following table:

|    Phenotype    |    SNP           |    effect_allele    |    other_allele    |    beta      |    se        |    eaf       |    pvalue      |    units    |
|-----------------|------------------|---------------------|--------------------|--------------|--------------|--------------|----------------|-------------|
|    HMGCR        |    rs17238484    |    T                |    G               |    0.0627    |    0.0627    |    0.2533    |    1.35E-21    |    sd       |


3. Define the outcome by selecting the following outcomes from the MR-Base GWAS catalog:

|    ID    |    Variable           |    First author (year)    |    Consortium               |    Sample size    |    Population    |    Sex                    |
|----------|-----------------------|---------------------------|-----------------------------|-------------------|------------------|---------------------------|
|    24    |    Type 2 diabetes    |    [Morris (2012)](https://doi.org/10.1038/ng.2383)     |    DIAGRAMplusMetabochip    |    149821         |    Mixed         |    Males and   females    |

4. Specify the analysis settings:

- Set LD clumping to ‘Do not check for LD between SNPs’ (as we only have one instrument SNP)
= Specify that LD proxies are permitted with a minimum LD R squared value of 0.8 and ensure ‘Allow palindromic SNPs?’ is ticked with the MAF threshold set to 0.3
- Set allele harmonisation to ‘Attempt to align strands for palindromic SNPs’
- Select the Wald ratio method for analysis

5. Perform the MR analysis and save the results, including the citations that are to be referenced in any published work arising from this analysis.  

Note that the MR-Base web interface will provide the analysis code as an output if you wish to recreate your analysis in R. Also, note that there are no graphical results for this case study as we used a single SNP instrument and so the sensitivity analyses illustrated in the graphs will not have been conducted. 
