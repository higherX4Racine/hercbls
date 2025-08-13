test_that("normal dashed SOCs are converted", {
    INPUTS <- c("00-0000", "11-1111", "09-8965", "99-2222")
    EXPECTED <- c(0L, 111111L, 98965L, 992222L)
    expect_identical(dashed_soc_to_int(INPUTS),
                     EXPECTED)
})

test_that("weirder SOCs are converted", {
    INPUTS <- c("0au0-00a00a", "1$1a111-1", "k$#@098965", "99-$#222!!#$#2")
    EXPECTED <- c(0L, 111111L, 98965L, 992222L)
    expect_identical(dashed_soc_to_int(INPUTS),
                     EXPECTED)
})
