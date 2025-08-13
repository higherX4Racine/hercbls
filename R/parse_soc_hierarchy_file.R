# Copyright (C) 2025 by Higher Expectations for Racine County

#' Read a spreadsheet of Standard Occupational Classification codes
#'
#' This is an internal function for creating the [SOC_HIERARCHY] data table.
#'
#' @param .hierarchy_file the full path to the spreadsheet
#'
#' @returns a data frame of classified occupation types
#' @seealso [SOC_HIERARCHY]
parse_soc_hierarchy_file <- function(.hierarchy_file) {
    .hierarchy_file |>
        readxl::read_xlsx(
            sheet = 1,
            skip = 8,
            col_names = c("Major",
                          "Minor",
                          "Broad",
                          "Detailed",
                          "Title"),
            col_types = "text"
        ) |>
        dplyr::mutate(
            dplyr::across(c("Major",
                            "Minor",
                            "Broad",
                            "Detailed"),
                          dashed_soc_to_int),
            Minor = dplyr::coalesce(.data$Major,
                                    .data$Minor),
            Broad = dplyr::coalesce(.data$Broad,
                                    .data$Minor),
            Detailed = dplyr::coalesce(.data$Detailed,
                                       .data$Broad)
        ) |>
        tidyr::fill(
            "Major",
            "Minor",
            "Broad",
            "Detailed"
        ) |>
        dplyr::mutate(
            Group = dplyr::case_when(
                .data$Detailed == .data$Major ~ "Major",
                .data$Detailed == .data$Minor ~ "Minor",
                .data$Detailed == .data$Broad ~ "Broad",
                .default = "Detailed"
            )
        ) |>
        dplyr::relocate(
            "Group",
            "Major",
            "Minor",
            "Broad",
            "Detailed",
            "Title"
        )
}
