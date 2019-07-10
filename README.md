[![DOI](https://zenodo.org/badge/169761536.svg)](https://zenodo.org/badge/latestdoi/169761536)

# MR-Base case studies

This repository contains the case studies associated with the manuscript "Using the MR-Base platform to investigate risk factors and drug targets for thousands of phenotypes".

## [Case Study 1](https://github.com/MRCIEU/mrbase_casestudies/tree/master/CaseStudy1)

This case study demonstrates the rapid implementation of Mendelian randomization using MR-Base to identify a novel risk factor and enable transparency. It is based on work by [Wootton et al (2018)](https://doi.org/10.1136/bmj.k3788) that used MR-Base to investigate the association between subjective wellbeing and 11 measures of cardiometabolic health.

## [Case Study 2](https://github.com/MRCIEU/mrbase_casestudies/tree/master/CaseStudy2)

This case study demonstrates how MR-Base can be used to conduct sensitivity analyses for Mendelian randomization and triangulate evidence. It is based on work by [Ference et al (2014)](https://doi.org/10.1161/HYPERTENSIONAHA.113.02734) that examined the effect of systolic blood pressure on coronary heart disease. 

## [Case Study 3](https://github.com/MRCIEU/mrbase_casestudies/tree/master/CaseStudy3)

This case study demonstrates how MR-Base can be used to replicate a Mendelian randomization study and appraise a potential intervention. It is based on work by [Swerdlow et al (2015)](https://doi.org/10.1016/S0140-6736(14)61183-1) that investigated the effect of 3-hydroxy-3-methylglutaryl-CoA reductase (HMGCR), the target of statins, on risk of type 2 diabetes.

## [TwoSampleMR R package](https://github.com/MRCIEU/TwoSampleMR)

The package `TwoSampleMR` is required to run these case studies in R. This can be installed directly from GitHub using `devtools`, as follows:

    install.packages("devtools")
    library(devtools)
    install_github("MRCIEU/TwoSampleMR")

## Citation

If you use MR-Base or the TwoSampleMR R package, please cite the following article:

Hemani G, Zheng J, Elsworth B, Wade KH, Baird D, Haberland V, Laurin C, Burgess S, Bowden J, Langdon R, Tan VY, Yarmolinsky J, Shihab HA, Timpson NJ, Evans DM, Relton C, Martin RM, Davey Smith G, Gaunt TR, Haycock PC, The MR-Base Collaboration. [The MR-Base platform supports systematic causal inference across the human phenome.](https://elifesciences.org/articles/34408) eLife 2018;7:e34408. doi: 10.7554/eLife.34408]
