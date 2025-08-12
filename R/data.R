# Copyright (C) 2025 by Higher Expectations for Racine County

#' Standard Occupational Classification
#'
#' A table of numerical codes that attempts to place every occupation in the
#' U.S. in a four-level hierarchy.
#'
#' @format A six-column table.
#'
#'   \describe{
#'     \item{Group}{The level of the hierarchy an occupation type belongs to.}
#'     \item{Major}{Which top-level group this occupation belongs to}
#'     \item{Minor}{Which 2nd-level group this occupation belongs to}
#'     \item{Broad}{Which 3rd-level group this occupation belongs to}
#'     \item{Detailed}{The SOC code for this occupation type or group of types.}
#'     \item{Title}{A verbal description of the occupation type or group.}
#'   }
#'
#' @source \url{https://www.bls.gov/soc/2018/soc_structure_2018.xlsx}
#' @seealso [parse_soc_hierarchy_file()]
"SOC_HIERARCHY"
