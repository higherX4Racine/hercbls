## Copyright (C) 2025 by Higher Expectations for Racine County
METADATA_FOR_WP <- list(
    footnote = list(
        footnote_code = "c",
        footnote_text = "c"
    ),
    group = list(
        group_code = "c",
        group_name = "c"
    ),
    item = list(
        group_code = "c",
        item_code = "c",
        item_name = "c"
    ),
    period = list(
        period = "c",
        period_abbr = "c",
        period_name = "c"
    ),
    seasonal = list(
        seasonal_code = "c",
        seasonal_text = "c"
    )
) |>
    purrr::imap(
        \(.spec, .table) hercbls:::import_metadata_tables("wp", .table, .spec)
    )

usethis::use_data(METADATA_FOR_WP, overwrite = TRUE)
