# Standard Occupational Classification

A table of numerical codes that attempts to place every occupation in
the U.S. in a four-level hierarchy.

## Usage

``` r
SOC_HIERARCHY
```

## Format

A six-column table.

- Group:

  The level of the hierarchy an occupation type belongs to.

- Major:

  Which top-level group this occupation belongs to

- Minor:

  Which 2nd-level group this occupation belongs to

- Broad:

  Which 3rd-level group this occupation belongs to

- Detailed:

  The SOC code for this occupation type or group of types.

- Title:

  A verbal description of the occupation type or group.

## Source

<https://www.bls.gov/soc/2018/soc_structure_2018.xlsx>

<https://www.bls.gov/soc/2018/home.htm>

## See also

[`parse_soc_hierarchy_file()`](https://higherx4racine.github.io/hercbls/reference/parse_soc_hierarchy_file.md)
