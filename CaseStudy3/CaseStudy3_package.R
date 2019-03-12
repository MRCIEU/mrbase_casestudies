# If you have not used the TwoSampleMR package before, please uncomment lines 4-6 to install ------

# install.packages("devtools")
# library(devtools)
# install_github("MRCIEU/TwoSampleMR")

# Load the TwoSampleMR package --------------------------------------------------------------------

library(TwoSampleMR)

# List the outcomes avaliable in MR-Base ----------------------------------------------------------

ao <- available_outcomes()

# Load the data for the instruments from the file 'instrument.csv' --------------------------------

exposure_dat <- read_exposure_data(
  filename = 'CaseStudy3_instrument.csv',
  sep = ',',
  snp_col = 'SNP',
  beta_col = 'beta',
  se_col = 'se',
  effect_allele_col = 'effect_allele',
  phenotype_col = 'Phenotype',
  units_col = 'units',
  other_allele_col = 'other_allele',
  eaf_col = 'eaf',
  samplesize_col = '',
  ncase_col = '',
  ncontrol_col = '',
  gene_col = '',
  pval_col = 'pvalue'
)

# Extract the outcome data on type 2 diabetes (ID: 24) --------------------------------------------

outcome_dat <- extract_outcome_data(exposure_dat$SNP, c('24'), 
                                    proxies = 1, rsq = 0.8, align_alleles = 1, 
                                    palindromes = 1, maf_threshold = 0.3)

# Harmonize the exposure and outcome data ---------------------------------------------------------

dat <- harmonise_data(exposure_dat, outcome_dat, action = 2)

# Perform MR analysis -----------------------------------------------------------------------------

mr_results <- mr(dat)
