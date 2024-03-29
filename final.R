#
# Paul Evans (10evans@cua.edu)
# 28 May 2020
#
setwd("~/Work/PCA")
library(stylo)
#
# 4-way comparison of case statements, 1st-recension, de Pen.,
# and 2nd-recension dicta:
#
# Gratian0.txt (vulgate case statements)
# Gratian1.txt (1st-recension dicta excluding de Pen.)
# dePen.txt    (1st- and 2nd-recension dicta from de Pen.)
# Gratian2.txt (2nd-recension dicta excluding de Pen.)
#
files.to.analyze <- c("Gratian0.txt", "Gratian1.txt", "dePen.txt", "Gratian2.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
#
# Figure 1
# 28 May 2020
#
stylo.results = stylo(
  gui = FALSE,
  features = "wordlists/wordlist_fig1.txt",
  corpus.dir = "corpora/final_xque",
  corpus.lang = "Latin.corr",
  mfw.min = 52, mfw.max = 52,
  mfw.list.cutoff = 240,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 1200,
  write.jpg.file = TRUE,
  pca.visual.flavour = "symbols",
  custom.graph.title = "4-way",
  custom.graph.filename = "JPGs/4-way_PCA_52_MFWs"
)
# summary(stylo.results)
print(stylo.results$features.actually.used)
#
# Figure 2
# 28 May 2020
# feature loadings
#
stylo.results = stylo(
  gui = FALSE,
  features = "wordlists/wordlist_fig1.txt",
  corpus.dir = "corpora/final_xque",
  corpus.lang = "Latin.corr",
  mfw.min = 52, mfw.max = 52,
  mfw.list.cutoff = 240,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 1200,
  write.jpg.file = TRUE,
  titles.on.graphs = FALSE,
  custom.graph.title = "4-way",
  pca.visual.flavour = "loadings",
  custom.graph.filename = "JPGs/4-way_PCA_52_MFWs_Loadings"
)
# summary(stylo.results)
print(stylo.results$features.actually.used)
#
# Figure 3
# 2 July 2020
# exclude _an_ from wordlist
#
stylo.results = stylo(
  gui = FALSE,
  features = "wordlists/wordlist_fig3.txt",
  corpus.dir = "corpora/final_xque",
  corpus.lang = "Latin.corr",
  mfw.min = 51, mfw.max = 51,
  mfw.list.cutoff = 240,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 1200,
  write.jpg.file = TRUE,
  pca.visual.flavour = "symbols",
  custom.graph.title = "4-way",
  custom.graph.filename = "JPGs/4-way_PCA_51_MFWs"
)
# summary(stylo.results)
print(stylo.results$features.actually.used)
#
# Figure NX
# 19 March 2021
# no-quote
# xque-processed
# _an_ commented
# _si_ uncommented
#
stylo.results = stylo(
  gui = FALSE,
  features = "wordlists/wordlist_nx.txt",
  corpus.dir = "corpora/final_noquote_xque",
  corpus.lang = "Latin.corr",
  mfw.min = 53, mfw.max = 53,
  mfw.list.cutoff = 240,
  delete.pronouns = TRUE,
  use.custom.list.of.files = TRUE,
  analysis.type = "PCR",
  sampling = "normal.sampling",
  sample.size = 1200,
  write.jpg.file = TRUE,
  pca.visual.flavour = "symbols",
  custom.graph.title = "4-way",
  custom.graph.filename = "JPGs/4-way_PCA_NX_MFWs"
)
# summary(stylo.results)
print(stylo.results$features.actually.used)
#
file.remove("files_to_analyze.txt")
file.remove("stylo_config.txt")
file.remove("table_with_frequencies.txt")
