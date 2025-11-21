# The menu of surveys at the BLS API

Each of the surveys has an official two-letter prefix code.

## Usage

``` r
GLOSSARY_OF_SURVEYS
```

## Format

An object of class `tibble/tbl_df/tbl/data.frame` with 2 rows and 2
columns

- Prefix:

  `<chr>` a two-letter code that starts every series associated with
  this survey

- Survey:

  `<chr>` A short title for the survey.

## Source

<https://download.bls.gov/pub/time.series/overview.txt>

<https://api.bls.gov/publicAPI/v2/surveys>
