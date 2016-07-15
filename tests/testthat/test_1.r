library(RkataPackage)
context("check_and_label")
test_that("Selectors work as expected...", {
  expect_match(check_and_label(3),"word")
  expect_match(check_and_label(5),"smith")
  expect_match(check_and_label(15),"wordsmith")
})
