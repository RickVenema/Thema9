library(RWeka)

FirstResultsExperimenter <- read.arff("RickVenemaProject/data/FirstResultsExperimenter.arff")
SMO.data <- read.csv("RickVenemaProject/data/SVM-results-researchsettings.csv")

boxplot(SMO.data$UserCPU_Time_millis_training)

