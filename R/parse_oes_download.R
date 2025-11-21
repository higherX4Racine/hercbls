## Copyright (C) 2025 by Higher Expectations for Racine County

#' Read an excel spreadsheet pulled from the BLS site.
#'
#' One way to get wage data from the BLS is to use
#' [this form](https://data.bls.gov/oes/#/home)
#'
#' @param .fullpath the location and file name where you saved the data
#'
#' @returns a data frame with at least three columns
#' \describe{
#'   \item{title}{The verbal description of the occupation or group}
#'   \item{soc_code}{The six-digit integer code for the occupation or group}
#'   \item{...}{one or more columns of data, depending on what you downloaded}
#' }
#' @export
parse_oes_download <- function(.fullpath) {
    .fullpath |>
        readxl::read_xlsx(
            skip = 5,
            col_types = "text"
        ) |>
        dplyr::rename(
            doomed = 1
        ) |>
        readr::type_convert(
            col_types = list(
                doomed = "c",
                .default = "d"
            ),
            na = sprintf("(%d) -", 0:9)
        ) |>
        dplyr::filter(
            stringr::str_detect(.data$doomed,
                                "\\(\\d{2}-\\d{4}\\)")
        ) |>
        tidyr::separate_wider_regex(
            "doomed",
            patterns = c(title = ".*",
                         "\\(",
                         soc_code = "\\d{2}-\\d{4}",
                         "\\)")
        ) |>
        dplyr::mutate(
            soc_code = dashed_soc_to_int(.data$soc_code)
        )
}
