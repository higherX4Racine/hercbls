# Copyright (C) 2025 by Higher Expectations for Racine County

test_that("parse_soc_hierarchy_file works with example data", {
    expect_snapshot_value(
        parse_soc_hierarchy_file("data/example_soc_hierarchy.xlsx"),
        style = "json2"
    )
})
