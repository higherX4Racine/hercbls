# Lookup tables for codes used by series "LA."

### METADATA_FOR_LA

## Usage

``` r
METADATA_FOR_LA
```

## Format

a list of seven data frames

### area

An object of class `spec_tbl_df/tbl_df/tbl/data.frame` with 8,325 rows
and 4 columns

- area_type_code:

  `<chr>` a one-letter code

- area_code:

  `<chr>` the type_code followed by a FIPS code

- area_text:

  `<chr>` a short description of the area, usually its name

- sort_sequence:

  `<int>` which row this area would be if they were sorted by FIPS codes

### area_type

An object of class `spec_tbl_df/tbl_df/tbl/data.frame` with 14 rows and
2 columns

- area_type_code:

  `<chr>` a one-letter code

- areatype_text:

  `<chr>` a short description of the type of area

### footnote

An object of class `spec_tbl_df/tbl_df/tbl/data.frame` with 7 rows and 2
columns

- footnote_code:

  `<chr>` a one-letter code

- footnote_text:

  `<chr>` an explanation of the footnote

### measure

An object of class `spec_tbl_df/tbl_df/tbl/data.frame` with 7 rows and 2
columns (S3: spec_tbl_df/tbl_df/tbl/data.frame)

- measure_code:

  `<chr>` a two-character code

- measure_text:

  `<chr>` a description of what the values measure

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

### state_region_division

An object of class `spec_tbl_df/tbl_df/tbl/data.frame` with 53 rows and
2 columns

- srd_code:

  `<chr>` a two-digit code

- srd_text:

  `<chr>` the name of the area

## Source

<https://download.bls.gov/pub/time.series/la/la.txt>
