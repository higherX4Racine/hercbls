# Specific geographic areas

A look-up table of fifteen-character codes for the specific geographic
areas that can be described by a BLS series. For example,
"CN2004900000000" is Elk County, Kansas, and "CT2718116000000" is Eden
Prairie, Minnesota.

## Usage

``` r
GLOSSARY_OF_AREAS
```

## Format

An object of class `tibble/tbl_df/tbl/data.frame` with 8325 rows and 4
columns

- area_type_code:

  `<chr>` a single-letter code

- area_code :

  `<chr>` a fifteen-character code, basically two characters plus FIPS

- area_text :

  `<chr>` a short description of the

- sort_sequence :

  `<int>` the sort order by FIPS code

## Source

<https://download.bls.gov/pub/time.series/la/la.area>
