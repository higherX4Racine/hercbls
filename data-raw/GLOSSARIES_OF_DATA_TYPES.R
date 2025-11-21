## Copyright (C) 2025 by Higher Expectations for Racine County

.helper <- function(.prefix, .field, .code_type) {
    "extdata" |>
        system.file(
            paste0(.prefix, ".", .field),
            package = "hercbls"
        ) |>
        readr::read_tsv(
            col_types = rlang::list2(
                "{.field}" := .code_type,
                "{.field}_text" := "c",
                .default = "-"
            ),
        )
}

GLOSSARIES_OF_DATA_TYPES <- list(
    CB = .helper("cb", "datatype", "i"),
    CE = .helper("ce", "datatype", "c"),
    EN = .helper("qcew", "data_type", "i"),
    FA = .helper("fa", "datatype", "i"),
    IS = .helper("is", "data_type", "c"),
    NB = .helper("nb", "datatype", "i"),
    NW = .helper("nw", "datatype", "i"),
    SM = .helper("sm", "data_type", "i")
)

usethis::use_data(GLOSSARIES_OF_DATA_TYPES, overwrite = TRUE)
