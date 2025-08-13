# Copyright (C) 2025 by Higher Expectations for Racine County

#' Read a spreadsheet of S.O.C. codes and educational levels.
#'
#' This is an internal function for creating the [EDUCATION_ASSIGNMENTS] data
#' table.
#'
#' @param .ed_file the path to the file downloaded from the BLS.
#'
#' @returns a data table with 5 columns
#'   \describe{
#'     \item{Title}{The name of the occupation type or group.}
#'     \item{soc_code}{The [SOC_HIERARCHY] code for the occupation}
#'     \item{Education}{A text description of the education needed for the job}
#'     \item{Experience}{Text stating previous work history needed for the job}
#'     \item{Training}{How much on-the-job training is typical for the job}
#'   }
#' @seealso [EDUCATION_ASSIGNMENTS]
parse_education_assignments_file <- function(.ed_file) {
    .ed_file |>
        readxl::read_xlsx(
            sheet = 5,
            skip = 2,
            col_names = c("Title",
                          "soc_code",
                          "Education",
                          "Experience",
                          "Training"),
            col_types = c("text",
                          "text",
                          "text",
                          "text",
                          "text",
                          "skip")
        ) |>
        dplyr::mutate(
            soc_code = .data$soc_code |>
                stringr::str_remove("-") |>
                as.integer()
        )
}
