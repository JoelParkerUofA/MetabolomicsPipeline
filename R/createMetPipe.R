#' Manually Create MetPipe Object
#' 
#' Create a MetPipe object from metabolomics matricies.
#' 
#' @param raw_peak Raw peak data
#' @param standardized_peak standardized peak data
#' @param meta Sample meta data
#' @param chemical_annotation Chemical annotation data
#' 
#' @returns MetPipe
#' 
#' The MetPipe data object contains all of the information needed to complete downstream
#' analysis. 
#' 
#' @import methods
#' 
#' @export
#' 

createMetPipe <- function(raw_peak=data.frame(), standardized_peak = data.frame(),
                          meta= data.frame(), chemical_annotation = data.frame()) {
  methods::new("MetPipe",
               raw_peak = as.data.frame(raw_peak),
               standardized_peak = as.data.frame(standardized_peak),
               meta = as.data.frame(meta),
               chemical_annotation = as.data.frame(chemical_annotation)
  )
}
