#' Utility for converting xx-xxxx SOC codes to 6-digit integers
#'
#' @param .dashed a string vector of SOC codes
#'
#' @returns an integer vector of 6-digit SOC codes
dashed_soc_to_int <- function(.dashed) {
    .dashed |>
        stringr::str_remove_all("\\D") |>
        as.integer()
}
