#
# Paul Evans (10evans@cua.edu)
# 20 March 2021
#
# create baseline wordlists 
#
setwd("~/Work/PCA")
library(stylo)
#
files.to.analyze <- c("Gratian0.txt", "Gratian1.txt", "dePen.txt", "Gratian2.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
#
stylo.results = stylo(
        gui = FALSE,
        corpus.dir = "corpora/final",
        corpus.lang = "Latin.corr",
        use.custom.list.of.files = TRUE,
)
file.copy("wordlist.txt", "corpora/final/wordlist.txt", overwrite = TRUE)
#
stylo.results = stylo(
        gui = FALSE,
        corpus.dir = "corpora/final_noquote",
        corpus.lang = "Latin.corr",
        use.custom.list.of.files = TRUE,
)
file.copy("wordlist.txt", "corpora/final_noquote/wordlist.txt", overwrite = TRUE)
#
stylo.results = stylo(
        gui = FALSE,
        corpus.dir = "corpora/final_noquote_xque",
        corpus.lang = "Latin.corr",
        use.custom.list.of.files = TRUE,
)
file.copy("wordlist.txt", "corpora/final_noquote_xque/wordlist4.txt", overwrite = TRUE)
#
stylo.results = stylo(
        gui = FALSE,
        corpus.dir = "corpora/final_xque",
        corpus.lang = "Latin.corr",
        use.custom.list.of.files = TRUE,
)
file.copy("wordlist.txt", "corpora/final_xque/wordlist.txt", overwrite = TRUE)
#
files.to.analyze <- c("Gratian0.txt", "Gratian1.txt", "Gratian2.txt")
writeLines(files.to.analyze, "files_to_analyze.txt")
#
stylo.results = stylo(
        gui = FALSE,
        corpus.dir = "corpora/final_noquote_xque",
        corpus.lang = "Latin.corr",
        use.custom.list.of.files = TRUE,
)
file.copy("wordlist.txt", "corpora/final_noquote_xque/wordlist3.txt", overwrite = TRUE)
#
file.remove("files_to_analyze.txt")
file.remove("stylo_config.txt")
file.remove("table_with_frequencies.txt")

