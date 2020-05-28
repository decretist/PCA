# Paul Evans (10evans@cua.edu)
# 28 May 2020
#
setwd("~/Work/PCA")
library(stylo)
#
files.to.analyze <- c("Gratian0.txt", "Gratian1.txt", "dePen.txt", "Gratian2.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
#
stylo.results = stylo(
  gui = TRUE,
  corpus.lang = "Latin.corr",
  mfw.min = 52, mfw.max = 52,
  mfw.list.cutoff = 240,
  delete.pronouns = TRUE,
  use.existing.wordlist = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 1200,
  # colors.on.graphs = "greyscale",
  pca.visual.flavour = "symbols"
)
# summary(stylo.results)
print(stylo.results$features.actually.used)