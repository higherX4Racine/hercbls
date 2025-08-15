## code to prepare `EDUCATIONAL_ATTAINMENT_LEVELS` dataset goes here

EDUCATIONAL_ATTAINMENT_LEVELS <- "extdata" |>
    system.file(
        "EDUCATIONAL_ATTAINMENT_LEVELS.csv",
        package = "hercbls"
    ) |>
    readr::read_csv(
        col_types = list(
            credential = "c",
            bls_id = "i"
        )
    )

usethis::use_data(EDUCATIONAL_ATTAINMENT_LEVELS, overwrite = TRUE)
