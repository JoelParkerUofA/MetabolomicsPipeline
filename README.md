-   [Overview](#overview)
-   [Installation](#installation)
-   [renv](#renv)
-   [Folder Structure](#folder-structure)

## Overview

The purpose of this pipeline is to provide additional analysis to
complement the analysis by Metabolon, where they identified biochemicals
(metabolites) that differed significantly across experimental groups. In
the Metabolon data, each “sub-pathway” classifies a collection of
metabolites, and each “super-pathway” classifies a collection of
sub-pathways. Hypothesis testing at the sub-pathway level can provide
valuable insight into how the experimental conditions affect metabolic
profiles. We also provide a section that focuses on looking at pairwise
comparisons at the metabolite level which is stratified by sex.

The below figure highlights the steps we will be taking, which highlight
the main sections of this pipeline by:

<img src='Workflow.png'>

In the diagram above we outline the steps to for data normalization
which is provided by Metabolon. However, Metabolon provides this data in
their .xlsx data tables. In the subsequent sections, we use the
normalized data derived by Metabolon.

## Installation

To download this pipeline, first make sure you have installed devtools.

``` r
# Install Dev tools
install.packages("devtools")
```

Now you can download the pipeline from Git-hub.

``` r
# Download pipeline from Github
devtools::install_github("JoelParkerUofA/Metabolomics-Pipeline")
```

Once the pipeline has finished downloading, you can open the R project
by opening the “Metabolomic Pipeline.Rproj” to run this pipeline on your
local computer.

## renv

This pipeline utilizes the
[renv](https://rstudio.github.io/renv/articles/renv.html#reproducibility)
package to ensure the R environment is consistent for each run. This
means that all of the required packages for this project will be
automatically installed within the Metabolomics Pipeline project folder.

## Folder Structure

To get started, in the Metabolomics pipeline working directory, there
are five folders with the following folder structure:

-   Data
    -   Metabolon: Contains the .xlsx file from Metabolon and other
        files related to the metadata.
    -   Processed: Contains data processed from this pipeline.
-   Code: Contains the code corresponding to each section.  
-   Outputs
    -   Plots
    -   Tables
    -   Reports
-   R: Contains and .R file with additional functions used for this
    pipeline.
-   renv: This folder is generated by renv to restore package versions.

You should save the .xlsx file from Metabolon and any additional
metadata files to the Data/Metabolon folder. The main output folder will
contain the plots and tables generated from this pipeline. Additionally,
you can run this pipeline as a report and save it as a .pdf or .html.
The report saves to the “Outputs/Reports” folder.
