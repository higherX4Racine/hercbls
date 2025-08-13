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
#' @source \url{https://www.bls.gov/soc/2018/home.htm}
#' @seealso [parse_soc_hierarchy_file()]
"SOC_HIERARCHY"


#' Education and training assignments by detailed occupation
#'
#' A table of educational and training requirements for many different jobs.
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
#' @source \url{https://www.bls.gov/emp/ind-occ-matrix/education.xlsx}
#' @source \url{https://www.bls.gov/emp/tables/education-and-training-by-occupation.htm}
#' @seealso [parse_education_assignments_file()]
"EDUCATION_ASSIGNMENTS"
