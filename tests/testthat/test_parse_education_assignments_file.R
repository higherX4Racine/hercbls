test_that("reading the example file produces the expected table", {
    expect_snapshot_value(
        parse_education_assignments_file("data/example_education.xlsx"),
        style = "json2"
    )
})
