% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loadMetPipeFromMetabolon.R
\name{loadMetPipeFromMetabolon}
\alias{loadMetPipeFromMetabolon}
\title{Load Metabolomic Pipeline Data}
\usage{
loadMetPipeFromMetabolon(metabolon_path)
}
\arguments{
\item{metabolon}{Path to Metabolon .xlsx file}
}
\value{
A MetPipe data object which contains 5 data slots.
\itemize{
\item raw_peak: The raw peak data
\item standardized_peak: Standardized peak data from Metabolon
\item meta: Sample metadata
\item chemical_annotation: Chemical annotation file
\item analysis: Analysis data used for the downstream analysis
}
}
\description{
Automatically load metabolomic data from Metabolon
}
