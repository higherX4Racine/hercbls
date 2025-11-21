## Copyright (C) 2025 by Higher Expectations for Racine County

.BLS_USER_AGENTS <- c(
    "Mozilla/5.0",
    "(Windows NT 10.0; Win64; x64)",
    "AppleWebKit/537.36",
    "(KHTML, like Gecko)",
    "Chrome/142.0.0.0",
    "Safari/537.36"
) |>
    paste(
        collapse = " "
    )

.BLS_sec_ch_ua_things <- c(
    "\"Chromium\";v=\"142\"",
    "\"Google Chrome\";v=\"142\"",
    "\"Not_A Brand\";v=\"99\""
) |>
    paste(
        collapse = ", "
    )

build_public_download_request <- function(...) {
    "https://download.bls.gov" |>
        httr2::request() |>
        httr2::req_url_path(
            "/pub/time.series",
            ...
        ) |>
        httr2::req_headers(
            Connection = "keep-alive",
            `sec-ch-ua` = .BLS_sec_ch_ua_things,
            `sec-ch-ua-mobile` = "?0",
            `sec-ch-ua-platform` = "\"Windows\""
        ) |>
        httr2::req_user_agent(
            .BLS_USER_AGENTS
        )
}
