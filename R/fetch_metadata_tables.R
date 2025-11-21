## Copyright (C) 2025 by Higher Expectations for Racine County

fetch_series_metadata <- function(.prefix) {
    .pattern <- paste0("^",
                       .prefix,
                       "\\.(?!data|series|contacts|txt).+$")
    .prefix |>
        hercbls:::build_public_download_request() |>
        httr2::req_perform() |>
        httr2::resp_body_html() |>
        rvest::html_elements(css = "a") |>
        rvest::html_text2() |>
        stringr::str_subset(.pattern) |>
        stringr::str_remove(paste0(.prefix, "."))
}
