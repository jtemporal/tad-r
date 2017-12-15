read.fixture <- function(file_path="/data/fixture.csv"){
  coltypes <- c(rep("character", 4))
  data <- read.csv(file_path, colClasses = coltypes)
  return(data)
}

prepare.data <- function(data){
  return(transform(data, numero = as.integer(numero)))
}

create.result <- function(data){
  for(i in 1:dim(data)[1]){
    if(data[i, 'descricao'] == 'nuveolina'){
      data[i, 'resultado'] <- 'amiguinha'
    } else {
      data[i, 'resultado'] <- 'amiguinho'
    }
  }
  return(data)
}

main <- function(){
  coleguinhas <- read.fixture()
  coleguinhas <- prepare.data(coleguinhas)
  coleguinhas <- create.result(coleguinhas)
  print(coleguinhas)
}

main()
