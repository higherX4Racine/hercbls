# Read an excel spreadsheet pulled from the BLS site.

One way to get wage data from the BLS is to use [this
form](https://data.bls.gov/oes/#/home)

## Usage

``` r
parse_oes_download(.fullpath)
```

## Arguments

- .fullpath:

  the location and file name where you saved the data

## Value

a data frame with at least three columns

- title:

  The verbal description of the occupation or group

- soc_code:

  The six-digit integer code for the occupation or group

- ...:

  one or more columns of data, depending on what you downloaded
