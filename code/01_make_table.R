here::i_am("code/01_make_table.R")

data <- readRDS(file = here::here("data/data_clean.rds"))

library(gtsummary)

table <- data |>
  select(sepal.length, sepal.width, petal.length, petal.width, species) |>
  tbl_summary(by = species, 
              statistic = list(all_continuous() ~ "{mean} ({sd})")) |>
  modify_spanning_header(c("stat_1", "stat_2") ~ "**Mean (SD) for Sepal and Petal Measurements**") |>
  add_overall()

saveRDS(
  table,
  file = here::here("output/table.rds"))

