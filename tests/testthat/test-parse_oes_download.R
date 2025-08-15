test_that("a stub file is read correctly", {
    actually_is <- parse_oes_download("data/example_oes_download.xlsx")

    expect_equal(names(actually_is), c(
        "title",
        "soc_code",
        "Hourly mean wage",
        "Hourly median wage",
        "Employment per 1,000 jobs",
        "Location Quotient"
    ))

    expect_equal(nrow(actually_is), 32L)

    expect_equal(sum(is.na(actually_is$`Hourly mean wage`)), 5L)

    expect_equal(sum(is.na(actually_is$`Hourly median wage`)), 5L)

    expect_equal(sum(is.na(actually_is$`Employment per 1,000 jobs`)), 0L)

    expect_snapshot_value(actually_is, style = "json2")
})
