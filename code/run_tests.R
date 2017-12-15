require("testthat")

source(normalizePath("/code/tad.R"))

test_dir(normalizePath('/tests/'), reporter = 'Summary')
