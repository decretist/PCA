#
# Paul Evans (10evans@cua.edu)
# 26 July 2020
#
setwd("~/Work/PCA")
library(stylo)
#
# 2-way comparison of 1st- and 2nd-recension dicta:
#
# Gratian1.txt (1st-recension dicta excluding de Pen.)
# Gratian2.txt (2nd-recension dicta excluding de Pen.)
#
files.to.analyze <- c("Gratian1.txt", "Gratian2.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
#
# Figure 1
# 28 May 2020
#
stylo.results = stylo(
  gui = TRUE,
  corpus.dir = "corpora/final_xque",
  corpus.lang = "Latin.corr",
  mfw.min = 52, mfw.max = 52,
  mfw.list.cutoff = 240,
  delete.pronouns = TRUE,
  use.existing.wordlist = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 1200,
  write.jpg.file = TRUE,
  pca.visual.flavour = "symbols",
  custom.graph.title = "2-way",
  custom.graph.filename = "JPGs/2-way_PCA_XX_MFWs"
)
# summary(stylo.results)
print(stylo.results$features.actually.used)
#
