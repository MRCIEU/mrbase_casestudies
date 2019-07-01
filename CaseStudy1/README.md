# Case study 1: Subjective wellbeing and cardiometabolic health

This case study demonstrates the rapid implementation of MR using MR-Base to identify a novel risk factor and enable transparency. It is based on work by [Wootton et al (2018)](https://doi.org/10.1136/bmj.k3788) that used MR-Base to investigate the association between subjective wellbeing and 11 measures of cardiometabolic health.

This repository provides the R code for this case study and instructions on how to use the MR-Base web interface. This repository also provides the results of this analysis (data downloads, graphs, and HTML reports), indexed according to the MR-Base IDs listed below.

## Using the 'TwoSampleMR' R package

The code to run this analysis is provided in the file [CaseStudy1_package.R](https://github.com/MRCIEU/mrbase_casestudies/blob/master/CaseStudy1/CaseStudy1_package.R)

Further information on the TwoSampleMR package can be found [here](https://github.com/MRCIEU/TwoSampleMR).

## Using the MR-Base web interface

1. Access the platform [here](http://www.mrbase.org/) and sign the data access agreement using a Google account.

2. Define the exposure by selecting the following from the MR-Base GWAS database. Specify the p-value threshold to be ‘5e-05’ and ensure ‘Perform clumping’ is ticked with the LD R squared value set to 0.001 and clumping distance set to 10000kb.

|    ID      |    Variable                  |    First author (year)    |    Consortium    |    Sample size    |    Population    |    Sex                    |
|------------|------------------------------|---------------------------|------------------|-------------------|------------------|---------------------------|
|    1009    |    Subjective   wellbeing    |    [Okbay (2016)](https://doi.org/10.1038/ng.3552)       |    SSGAC         |    298420         |    European      |    Males and   females    |

3. Define the outcome by selecting the following outcomes from the MR-Base GWAS database:

|    ID     |    Variable                    |    First author (year)    |    Consortium              |    Sample size    |    Population      |    Sex                    |
|-----------|--------------------------------|---------------------------|----------------------------|-------------------|--------------------|---------------------------|
|    2      |    Body mass index             |    [Locke (2015)](https://doi.org/10.1038/nature14177)      |    GIANT                   |    339224         |    Mixed           |    Males and   females    |
|    61     |    Waist   circumference       |    [Shungin (2015)](https://doi.org/10.1038/nature14132)     |    GIANT                   |    232101         |    European        |    Males and   females    |
|    79     |    Waist-to-hip-ratio          |    [Shungin (2015)](https://doi.org/10.1038/nature14132)     |    GIANT                   |    210082         |    European        |    Males and   females    |
|    999    |    Body fat                    |    [Lu (2016)](https://doi.org/10.1038/ncomms10495)          |    -                       |    3228665        |    89% European    |    Males and   females    |
|    299    |    HDL cholesterol             |    [Willer (2013)](https://doi.org/10.1038/ng.2797)      |    GLGC                    |    187167         |    Mixed           |    Males and   females    |
|    300    |    LDL cholesterol             |    [Willer (2013)](https://doi.org/10.1038/ng.2797)      |    GLGC                    |    173082         |    Mixed           |    Males and   females    |
|    301    |    Total cholesterol           |    [Willer (2013)](https://doi.org/10.1038/ng.2797)      |    GLGC                    |    187365         |    Mixed           |    Males and females      |
|    798    |    Myocardial   infarction     |    [Nikpay (2015)](https://doi.org/10.1038/ng.3396)      |    CARDIoGRAM   plusC4D    |    171875         |    Mixed           |    Males and   females    |
|    7      |    Coronary heart   disease    |    [Nikpay (2015)](https://doi.org/10.1038/ng.3396)      |    CARDIoGRAM   plusC4D    |    171875         |    Mixed           |    Males and   females    |

4. Specify the analysis settings:

- Set LD clumping to ‘Do not check for LD between SNPs’ (as this was done in step 2)
- Specify that LD proxies are permitted with a minimum LD R squared value of 0.8 and ensure ‘Allow palindromic SNPs?’ is ticked with the MAF threshold set to 0.3
- Set allele harmonisation to ‘Attempt to align strands for palindromic SNPs’
- Select the MR Egger, weighted median, weighted mode and inverse variance weighted methods for analysis.

5. Select the ‘perform MR analysis’ button and save the results, including the citations that are to be referenced in any published work arising from this analysis, on the following screen.

Note that the MR-Base web interface will provide the analysis code as an output if you wish to recreate your analysis in R.
