# Lookup tables for codes used by series "WP."

### METADATA_FOR_WP

## Usage

``` r
METADATA_FOR_WP
```

## Format

a list of five data frames

### footnote

An object of class `spec_tbl_df/tbl_df/tbl/data.frame` with 2 rows and 2
columns

- footnote_code:

  `<chr>` a one-letter code

- footnote_text:

  `<chr>` an explanation of the footnote

### group

An object of class `spec_tbl_df/tbl_df/tbl/data.frame` with 56 rows and
2 columns (S3: spec_tbl_df/tbl_df/tbl/data.frame)

- group_code:

  `<chr>` a two-character code

- group_text:

  `<chr>` a broad category of commodities

### item

An object of class `spec_tbl_df/tbl_df/tbl/data.frame` with 4168 rows
and 4 columns

- group_code:

  `<chr>` a two-character code

- item_code:

  `<chr>` a one- to six-digit code for a specific commodity

- item_name:

  `<chr>` the name of the commodity

### period

An object of class `spec_tbl_df/tbl_df/tbl/data.frame` with 13 rows and
3 columns

- period:

  `<chr>` a three-character code like "M01" or "M13"

- period_abbr:

  `<chr>` short text for the period, like "JAN" or "AN AV"

- period_name:

  `<chr>` the full name of the period

### seasonal

An object of class `spec_tbl_df/tbl_df/tbl/data.frame` with 2 rows and 2
columns

- seasonal_code:

  `<chr>` either "U" or "S"

- seasonal_text:

  `<chr>` either "Unadjusted" or "Seasonally Adjusted."

## Source

<https://download.bls.gov/pub/time.series/wp/wp.txt>
