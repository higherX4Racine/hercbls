## Copyright (C) 2025 by Higher Expectations for Racine County

import_metadata_tables <- function(.prefix, .table, .spec) {
    .prefix |>
        hercbls:::build_public_download_request(
            paste0(.prefix, ".", .table)
        ) |>
        httr2::req_perform() |>
        httr2::resp_body_string() |>
        readr::read_tsv(
            col_types = .spec
        )
}
