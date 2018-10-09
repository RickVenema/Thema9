ZeroR.TimeTraining <- sum(ZeroR.results$Elapsed_Time_training)/(dim(ZeroR.results)[1])
OneR.TimeTraining <- sum(OneR.results$Elapsed_Time_training)/(dim(OneR.results)[1])
IBk.TimeTraining <- sum(IBk.results$Elapsed_Time_training)/(dim(IBk.results)[1])
C45.TimeTraining <- sum(C45.results$Elapsed_Time_training)/(dim(C45.results)[1])
LR.TimeTraining <- sum(LR.results$Elapsed_Time_training)/(dim(LR.results)[1])
MPL.TimeTraining <- sum(MPL.results$Elapsed_Time_training)/(dim(MPL.results)[1])
RandomForest.TimeTraining <- sum(RandomForest.results$Elapsed_Time_training)/(dim(RandomForest.results)[1])
SL.TimeTraining <- sum(SL.results$Elapsed_Time_training)/(dim(SL.results)[1])
SVM.TimeTraining <- sum(SVM.results$Elapsed_Time_training)/(dim(SVM.results)[1])

averageTimeTraining <- data.frame(c("ZeroR", "OneR", "IBk", "C4.5", "Logistic Regression", "MultiLayerPerceptron", "RandomForest", "Simple Logistics", "Support Vector Machines"),
                                  c(ZeroR.TimeTraining, OneR.TimeTraining, IBk.TimeTraining, C45.TimeTraining, LR.TimeTraining, MPL.TimeTraining, RandomForest.TimeTraining, SL.TimeTraining, SVM.TimeTraining))

colnames(averageTimeTraining) <- c("Algorithm", "Average Time Cost")