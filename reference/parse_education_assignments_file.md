# Read a spreadsheet of S.O.C. codes and educational levels.

This is an internal function for creating the
[EDUCATION_ASSIGNMENTS](https://higherx4racine.github.io/hercbls/reference/EDUCATION_ASSIGNMENTS.md)
data table.

## Usage

``` r
parse_education_assignments_file(.ed_file)
```

## Arguments

- .ed_file:

  the path to the file downloaded from the BLS.

## Value

a data table with 5 columns

- Title:

  The name of the occupation type or group.

- soc_code:

  The
  [SOC_HIERARCHY](https://higherx4racine.github.io/hercbls/reference/SOC_HIERARCHY.md)
  code for the occupation

- Education:

  A text description of the education needed for the job

- Experience:

  Text stating previous work history needed for the job

- Training:

  How much on-the-job training is typical for the job

## See also

[EDUCATION_ASSIGNMENTS](https://higherx4racine.github.io/hercbls/reference/EDUCATION_ASSIGNMENTS.md)
