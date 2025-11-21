## Copyright (C) 2025 by Higher Expectations for Racine County

METADATA_FOR_LA <- list(
    area = list(
        area_type_code = "c",
        area_code = "c",
        area_text = "c",
        display_level = "-",
        selectable = "-",
        sort_sequence = "i"
    ),
    area_type = list(
        area_type_code = "c",
        areatype_text = "c"
    ),
    footnote =  list(
        footnote_code = "c",
        footnote_text = "c"
    ),
    measure = list(
        measure_code = "c",
        measure_text = "c"
    ),
    period = list(
        period = "c",
        period_abbr = "c",
        period_name = "c"
    ),
    seasonal = list(
        seasonal_code = "c",
        seasonal_text = "c"
    ),
    state_region_division =  list(
        srd_code = "c",
        srd_text = "c"
    )
) |>
    purrr::imap(
        \(.spec, .table) hercbls:::import_metadata_tables("la", .table, .spec)
    )

usethis::use_data(METADATA_FOR_LA, overwrite = TRUE)
