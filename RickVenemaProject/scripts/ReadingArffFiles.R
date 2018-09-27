ReadARFF <- function(pathToFile){
  library(RWeka)
  out <- read.arff(pathToFile)
  return (out)
}

ReadARFF("../data/FirstResultsExperimenter.arff")