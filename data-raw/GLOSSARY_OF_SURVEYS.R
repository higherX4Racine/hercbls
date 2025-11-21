## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_SURVEYS <- "extdata" |>
    system.file(
        "GLOSSARY_OF_SURVEYS.csv",
        package = "hercbls"
    ) |>
    readr::read_csv(
        col_types = "c"
    )

usethis::use_data(GLOSSARY_OF_SURVEYS, overwrite = TRUE)
