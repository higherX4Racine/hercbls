## Copyright (C) 2025 by Higher Expectations for Racine County

fetch_laus_data <- function(.area_codes, .begin_year, .final_year) {

    .fetching_context <- dplyr::mutate(
        tidyr::expand_grid(
            area_code = .area_codes,
            hercbls::GLOSSARY_OF_LAUS_MEASURES
        ),
        Variable = paste0("LA", "U",
                          .data$area_code,
                          .data$measure_code)
    )

    .request <- "https://api.bls.gov" |>
        httr2::request() |>
        httr2::req_method(
            "post"
        ) |>
        httr2::req_url_path(
            "publicAPI/v2/timeseries/data/"
        ) |>
        httr2::req_body_json(
            list(seriesid = .fetching_context$Variable,
                 startyear = .begin_year,
                 endyear = .final_year)
        )

    .response <- httr2::req_perform(.request)

    .response |>
        httr2::resp_body_json() |>
        purrr::pluck(
            "Results",
            "series"
        ) |>
        purrr::map(
            \(.l) rlang::list2(
                "{.l$seriesID}" := .l$data |>
                    purrr::list_transpose() |>
                    tibble::as_tibble()
            )
        ) |>
        purrr::list_flatten() |>
        purrr::list_rbind(
            names_to = "Variable"
        ) |>
        dplyr::mutate(
            Value = as.numeric(.data$value)
        ) |>
        dplyr::left_join(
            .fetching_context,
            by = "Variable"
        ) |>
        dplyr::select(
            Area = "area_code",
            Year = "year",
            Period = "period",
            "measure_text",
            "Value"
        ) |>
        tidyr::pivot_wider(
            names_from = "measure_text",
            values_from = "Value",
            values_fill = NA
        )
}
