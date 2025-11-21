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
#'     \item{Title}{A verbal description of the occupation type or group}
#'     \item{soc_code}{The SOC code for this occupation type or group of types}
#'     \item{Education}{A description of the education required for this job}
#'     \item{Experience}{A description of the career experience for this job}
#'     \item{Training}{A description of the on-the-job training for this job}
#'   }
#'
#' @source \url{https://www.bls.gov/emp/ind-occ-matrix/education.xlsx}
#' @source \url{https://www.bls.gov/emp/tables/education-and-training-by-occupation.htm}
#' @seealso [parse_education_assignments_file()]
"EDUCATION_ASSIGNMENTS"

#' Levels of educational attainment, according to the BLS
#'
#' A table of educational levels with two-digit coedes
#'
#' @format A two-column table.
#'
#'   \describe{
#'     \item{credential}{A verbal description of a level of education.}
#'     \item{bls_id}{A two-digit integer}
#'   }
#'
#' @source \url{https://www.bls.gov/emp/tables/education-and-training-by-occupation.htm}
#' @seealso [EDUCATION_ASSIGNMENTS]
"EDUCATIONAL_ATTAINMENT_LEVELS"

#' Types of geographic area
#'
#' A look-up table of one-letter codes for specifying the kind of geographic
#' area described by a BLS series.
#'
#' @format An object of class `tibble/tbl_df/tbl/data.frame`
#' with 14 rows and 2 columns
#' \describe{
#'   \item{area_code_type}{`<chr>` upper-case letters}
#'   \item{areatype_text}{`<chr>` a short description of the kind of area}
#' }
#' @source \url{https://download.bls.gov/pub/time.series/la/la.area_type}
"GLOSSARY_OF_AREA_TYPES"

#' Specific geographic areas
#'
#' A look-up table of fifteen-character codes for the specific geographic areas
#' that can be described by a BLS series. For example, "CN2004900000000" is
#' Elk County, Kansas, and "CT2718116000000" is Eden Prairie, Minnesota.
#'
#' @format An object of class `tibble/tbl_df/tbl/data.frame`
#' with 8325 rows and 4 columns
#' \describe{
#'   \item{area_type_code}{`<chr>` a single-letter code}
#'   \item{area_code     }{`<chr>` a fifteen-character code, basically two characters plus FIPS}
#'   \item{area_text     }{`<chr>` a short description of the }
#'   \item{sort_sequence }{`<int>` the sort order by FIPS code}
#' }
#' @source \url{https://download.bls.gov/pub/time.series/la/la.area}
"GLOSSARY_OF_AREAS"

#' Types of seasonal adjustments
#'
#' A look-up table of one-letter codes for specifying whether or not a series'
#' values are seasonally adjusted.
#'
#' @format An object of class `tibble/tbl_df/tbl/data.frame`
#' with 2 rows and 2 columns
#' \describe{
#'   \item{adjustment_code}{`<chr>` "U" or "S"}
#'   \item{adjustment_text}{`<chr>` "Unadjusted" or "Seasonally Adjusted"}
#' }
#' @source \url{https://www.bls.gov/help/hlpseas.htm}
"GLOSSARY_OF_SEASONAL_ADJUSTMENTS"

#' The menu of surveys at the BLS API
#'
#' Each of the surveys has an official two-letter prefix code.
#'
#' @format An object of class `tibble/tbl_df/tbl/data.frame`
#' with 2 rows and 2 columns
#' \describe{
#'   \item{Prefix}{`<chr>` a two-letter code that starts every series associated with this survey}
#'   \item{Survey}{`<chr>` A short title for the survey.}
#' }
#' @source \url{https://download.bls.gov/pub/time.series/overview.txt}
#' @source \url{https://api.bls.gov/publicAPI/v2/surveys}
"GLOSSARY_OF_SURVEYS"

#' Lookup tables for codes used by series "LA."
#'
#' @format a list of seven data frames
#'
#' ## area
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 8,325 rows and 4 columns
#'
#' \describe{
#'   \item{area_type_code}{`<chr>` a one-letter code}
#'   \item{area_code}{`<chr>` the type_code followed by a FIPS code}
#'   \item{area_text}{`<chr>` a short description of the area, usually its name}
#'   \item{sort_sequence}{`<int>` which row this area would be if they were sorted by FIPS codes}
#' }
#'
#' ## area_type
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 14 rows and 2 columns
#'
#' \describe{
#'   \item{area_type_code}{`<chr>` a one-letter code}
#'   \item{areatype_text}{`<chr>` a short description of the type of area }
#' }
#'
#' ## footnote
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 7 rows and 2 columns
#'
#' \describe{
#'   \item{footnote_code}{`<chr>` a one-letter code}
#'   \item{footnote_text}{`<chr>` an explanation of the footnote}
#'  }
#'
#' ## measure
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 7 rows and 2 columns (S3: spec_tbl_df/tbl_df/tbl/data.frame)
#'
#' \describe{
#'   \item{measure_code}{`<chr>` a two-character code}
#'   \item{measure_text}{`<chr>` a description of what the values measure}
#' }
#'
#' ## period
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 13 rows and 3 columns
#'
#' \describe{
#'   \item{period}{`<chr>` a three-character code like "M01" or "M13"}
#'   \item{period_abbr}{`<chr>` short text for the period, like "JAN" or "AN AV"}
#'   \item{period_name}{`<chr>` the full name of the period}
#' }
#'
#' ## seasonal
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 2 rows and 2 columns
#'
#' \describe{
#'   \item{seasonal_code}{`<chr>` either "U" or "S"}
#'   \item{seasonal_text}{`<chr>` either "Unadjusted" or "Seasonally Adjusted."}
#' }
#'
#' ## state_region_division
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 53 rows and 2 columns
#'
#' \describe{
#'   \item{srd_code}{`<chr>` a two-digit code}
#'   \item{srd_text}{`<chr>` the name of the area}
#' }
#'
#' @source \url{https://download.bls.gov/pub/time.series/la/la.txt}
"METADATA_FOR_LA"

#' Lookup tables for codes used by series "WP."
#'
#' @format a list of five data frames
#'
#' ## footnote
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 2 rows and 2 columns
#'
#' \describe{
#'   \item{footnote_code}{`<chr>` a one-letter code}
#'   \item{footnote_text}{`<chr>` an explanation of the footnote}
#'  }
#'
#' ## group
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 56 rows and 2 columns (S3: spec_tbl_df/tbl_df/tbl/data.frame)
#'
#' \describe{
#'   \item{group_code}{`<chr>` a two-character code}
#'   \item{group_text}{`<chr>` a broad category of commodities}
#' }
#'
#' ## item
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 4168 rows and 4 columns
#'
#' \describe{
#'   \item{group_code}{`<chr>` a two-character code}
#'   \item{item_code}{`<chr>` a one- to six-digit code for a specific commodity}
#'   \item{item_name}{`<chr>` the name of the commodity}
#' }
#'
#' ## period
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 13 rows and 3 columns
#'
#' \describe{
#'   \item{period}{`<chr>` a three-character code like "M01" or "M13"}
#'   \item{period_abbr}{`<chr>` short text for the period, like "JAN" or "AN AV"}
#'   \item{period_name}{`<chr>` the full name of the period}
#' }
#'
#' ## seasonal
#'
#' An object of class `spec_tbl_df/tbl_df/tbl/data.frame`
#' with 2 rows and 2 columns
#'
#' \describe{
#'   \item{seasonal_code}{`<chr>` either "U" or "S"}
#'   \item{seasonal_text}{`<chr>` either "Unadjusted" or "Seasonally Adjusted."}
#' }
#'
#' @source \url{https://download.bls.gov/pub/time.series/wp/wp.txt}
"METADATA_FOR_WP"
