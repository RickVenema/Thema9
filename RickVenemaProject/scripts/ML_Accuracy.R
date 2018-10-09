ZeroR.results <- read.csv("../data/ZeroR-results-all.csv")
OneR.results <- read.csv("../data/OneR-results-all.csv")
IBk.results <- read.csv("../data/IBk-results-all.csv")
C45.results <- read.csv("../data/C45-results-all.csv")
LR.results <- read.csv("../data/LR-results-all.csv")
MPL.results <- read.csv("../data/MLP-results-all.csv")
RandomForest.results <- read.csv("../data/RandomForest-results-all.csv")
SL.results <- read.csv("../data/SL-results-all.csv")
SVM.results <- read.csv("../data/SVM-results-researchsettings-all.csv")

ZeroR.averageCorrect <- sum(ZeroR.results$Percent_correct)/(dim(ZeroR.results)[1])
OneR.averageCorrect <- sum(OneR.results$Percent_correct)/(dim(OneR.results)[1])
IBk.averageCorrect <- sum(IBk.results$Percent_correct)/(dim(IBk.results)[1])
C45.averageCorrect <- sum(C45.results$Percent_correct)/(dim(C45.results)[1])
LR.averageCorrect <- sum(LR.results$Percent_correct)/(dim(LR.results)[1])
MPL.averageCorrect <- sum(MPL.results$Percent_correct)/(dim(MPL.results)[1])
RandomForest.averageCorrect <- sum(RandomForest.results$Percent_correct)/(dim(RandomForest.results)[1])
SL.averageCorrect <- sum(SL.results$Percent_correct)/(dim(SL.results)[1])
SVM.averageCorrect <- sum(SVM.results$Percent_correct)/(dim(SVM.results)[1])

averageCorrect.dataframe <- data.frame(c("ZeroR", "OneR", "IBk", "C4.5", "Logistic Regression", "MultiLayerPerceptron", "RandomForest", "Simple Logistics", "Support Vector Machines"),
                                       c(ZeroR.averageCorrect, OneR.averageCorrect, IBk.averageCorrect, C45.averageCorrect, LR.averageCorrect, MPL.averageCorrect, RandomForest.averageCorrect, SL.averageCorrect, SVM.averageCorrect))

colnames(averageCorrect.dataframe) <- c("Algorithm", "Average Percentage Correct")
