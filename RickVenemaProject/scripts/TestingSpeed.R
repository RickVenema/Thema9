ZeroR.TimeTrainingTesting <- sum(ZeroR.results$Elapsed_Time_testing)/(dim(ZeroR.results)[1])
OneR.TimeTrainingTesting <- sum(OneR.results$Elapsed_Time_testing)/(dim(OneR.results)[1])
IBk.TimeTrainingTesting <- sum(IBk.results$Elapsed_Time_testing)/(dim(IBk.results)[1])
C45.TimeTrainingTesting <- sum(C45.results$Elapsed_Time_testing)/(dim(C45.results)[1])
LR.TimeTrainingTesting <- sum(LR.results$Elapsed_Time_testing)/(dim(LR.results)[1])
MPL.TimeTrainingTesting <- sum(MPL.results$Elapsed_Time_testing)/(dim(MPL.results)[1])
RandomForest.TimeTrainingTesting <- sum(RandomForest.results$Elapsed_Time_testing)/(dim(RandomForest.results)[1])
SL.TimeTrainingTesting <- sum(SL.results$Elapsed_Time_testing)/(dim(SL.results)[1])
SVM.TimeTrainingTesting <- sum(SVM.results$Elapsed_Time_testing)/(dim(SVM.results)[1])

averageTimeTrainingTesting <- data.frame(c("ZeroR", "OneR", "IBk", "C4.5", "Logistic Regression", "MultiLayerPerceptron", "RandomForest", "Simple Logistics", "Support Vector Machines"),
                                         c(ZeroR.TimeTrainingTesting, OneR.TimeTrainingTesting, IBk.TimeTrainingTesting, C45.TimeTrainingTesting, LR.TimeTrainingTesting, 
                                           MPL.TimeTrainingTesting, RandomForest.TimeTrainingTesting, SL.TimeTrainingTesting, SVM.TimeTrainingTesting))

colnames(averageTimeTrainingTesting) <- c("Algorithm", "Average Time Cost")