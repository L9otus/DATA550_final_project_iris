here::i_am("code/02_make_boxplot.R")

data <- readRDS(file = here::here("data/data_clean.rds"))

library(ggplot2)

# first boxplot
boxplot_sepal_length <- ggplot(data, aes(x = species, y = sepal.length, color = species)) +
  geom_boxplot(width = 0.8) +
  labs(title = "Boxplot of Sepal Length by Species", x = "Species of Iris", y = "Sepal Length (cm)") +
  scale_color_manual(values=c("red2", "green4", "blue")) +
  theme(legend.position = "right")

ggsave("output/boxplot_sepal_length.png", plot = boxplot_sepal_length)


# second boxplot
boxplot_sepal_width <- ggplot(data, aes(x = species, y = sepal.width, color = species)) +
  geom_boxplot(width = 0.8) +
  labs(title = "Boxplot of Sepal Width by Species", x = "Species of Iris", y = "Sepal Width (cm)") +
  scale_color_manual(values=c("red2", "green4", "blue")) +
  theme(legend.position = "right")

ggsave("output/boxplot_sepal_width.png", plot = boxplot_sepal_width)
