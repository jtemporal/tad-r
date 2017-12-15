require("testthat")

source(normalizePath("/code/tad.r"))

test_dir(normalizePath('/tests/'), reporter = 'Summary')
