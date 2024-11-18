here::i_am("code/00_clean_data.R")

path_to_data <- here::here("data/iris.data")
data_clean <- read.table(path_to_data, sep = ",", header = FALSE)

colnames(data_clean) <- c("sepal.length", "sepal.width", "petal.length", "petal.width", "species")
data_clean$species <- sub("Iris-", "", data_clean$species)
head(data_clean)

saveRDS(data_clean, "data/data_clean.rds")