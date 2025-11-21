## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_SEASONAL_ADJUSTMENTS <- tibble::tribble(
    ~ adjustment_code, ~ adjustement_text,
    "U",    "Unadjusted",
    "S",    "Seasonally Adjsted"
)

usethis::use_data(GLOSSARY_OF_SEASONAL_ADJUSTMENTS, overwrite = TRUE)
