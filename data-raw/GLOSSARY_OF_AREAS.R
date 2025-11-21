## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_AREAS <- "extdata" |>
    system.file(
        "la.area",
        package = "hercbls"
    ) |>
    readr::read_tsv(
        col_types = list(
            area_type_code = "c",
            area_code = "c",
            area_text = "c",
            display_level = "-",
            selectable = "-",
            sort_sequence = "i"
        )
    ) |>
    dplyr::arrange(
        .data$sort_sequence
    )

usethis::use_data(GLOSSARY_OF_AREAS, overwrite = TRUE)
