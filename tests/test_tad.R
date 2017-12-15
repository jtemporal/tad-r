context("test-tad")

coleguinhas <- read.fixture()
test_that("read.fixture lê o arquivo de testes e retorna um dataframe", {
              expect_is(coleguinhas, "data.frame")
              expect_is(coleguinhas$id, "character")
              expect_is(coleguinhas$nome, "character")
              expect_is(coleguinhas$descricao, "character")
              expect_is(coleguinhas$numero, "character")
              expect_equal(dim(coleguinhas), c(4, 4))
})

coleguinhas <- prepare.data(coleguinhas)
test_that("prepare.data retorna a coluna numero como integer", {
              expect_is(coleguinhas, "data.frame")
              expect_is(coleguinhas$id, "character")
              expect_is(coleguinhas$nome, "character")
              expect_is(coleguinhas$descricao, "character")
              expect_is(coleguinhas$numero, "integer")
              expect_equal(dim(coleguinhas), c(4, 4))
})

coleguinhas <- create.result(coleguinhas)
test_that("create.result retorna dataframe com nova coluna contendo texto", {
              expect_is(coleguinhas, "data.frame")
              expect_is(coleguinhas$id, "character")
              expect_is(coleguinhas$nome, "character")
              expect_is(coleguinhas$descricao, "character")
              expect_is(coleguinhas$numero, "integer")
              expect_is(coleguinhas$resultado, "character")
              expect_equal(dim(coleguinhas), c(4, 5))
})

main_output <- "  id     nome descricao numero resultado\\n1 01     jess nuveolina     22 amiguinha\\n2 02   cassio nuveolino     50 amiguinho\\n3 03 paulinha nuveolina     57 amiguinha\\n4 04     pery nuveolino      7 amiguinho"
test_that("main printa dataframe na tela", {
              expect_output(main(), main_output)
})
