library(tm)
library(wordcloud)
library(memoise)

## ESA Journals
## journals <<- list("Ecological Applications" = "rnd",
##                   "Ecology" = "rnd",
##                   "Ecological Monographs" = "rnd",
##                   "All"='rnd')

journals <<- list("All Journals"='rnd')

# Using "memoise" to automatically cache the results
getTermMatrix <- memoise(function(journal) {
  # Careful not to let just any name slip in here; a
  # malicious user could manipulate this value.
  if (!(journal %in% journals))
    stop("Unknown journal")

  text <- readLines(sprintf("./%s.txt.gz", journal),
                    encoding="UTF-8",skipNul=TRUE,warn=FALSE)

  myCorpus = Corpus(VectorSource(text))
  myCorpus = tm_map(myCorpus, content_transformer(tolower))
  myCorpus = tm_map(myCorpus, removePunctuation)
  myCorpus = tm_map(myCorpus, removeNumbers)
  myCorpus = tm_map(myCorpus, removeWords,
         c(stopwords("SMART"), "thy", "thou", "thee", "the", "and", "but"))

  myDTM = TermDocumentMatrix(myCorpus,
              control = list(minWordLength = 1))
  
  m = as.matrix(myDTM)
  
  sort(rowSums(m), decreasing = TRUE)
})
