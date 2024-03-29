# Load required packages for analysis
source("Code/Setup.R")

# Load Data from AnalysisDataCreation.R
dat <- readRDS("data/dat.Rds")

################################################################################
#### Run Pairwise Comparisons ##################################################
################################################################################

strat_pairwise = metabolite_pairwise(dat,form = "GROUP_NAME*TIME1",strat_var = "Gender")


###############################################################################
## Create Estimate Heatmap #####################################################
################################################################################

met_est_heatmap(strat_pairwise$Female, dat)


################################################################################
## Create P-value Heatmap ######################################################
################################################################################

# Female
met_p_heatmap(strat_pairwise$Female, dat)
