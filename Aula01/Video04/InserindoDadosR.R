# Inserindo dados no R

# Utilizando o import dataset

# Criando um dataframe no R:
obs <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
tcantes <- c(39.1, 38.2, 37.1, 36.8, 37.6, 37.4, 37.7, 37.9, 38.1, 38.4)
tcdepois <- c(37.6, 37.2, 36.5, 36.3, 37.9, 38.3, 38.3, 39.1, 37.6, 40.1)

suino <- data.frame(obs, tcantes, tcdepois)

# Visualizar os dados do dataframe criado:



# Salvando dados no formato R.Data
save(suino, file = "suino.RData")

# Utilizar comandos para realizar a leitura de arquivo R.Data
load("suino.RData")

# Obtendo informações do banco de dados

nrow(suino)
ncol(suino)
dim(suino)
