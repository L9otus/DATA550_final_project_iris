here::i_am("code/03_render_report.R")

library(rmarkdown)

render(
  "iris_report.Rmd",
  knit_root_dir = here::here()
)