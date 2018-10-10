PCA.data <- rawDataTraining[2:10]

PCA.data <- data.frame(rowSums( PCA.data[,1:3 ]),
                       rowSums( PCA.data[,4:6 ]),
                       rowSums( PCA.data[,7:9])
)

colnames(PCA.data) <- c("26 September 2010", "19 March 2011", "8 May 2011")



PCA.data.log <- log(PCA.data)

PCA.bColumns <- prcomp(PCA.data.log,
                       center=TRUE,
                       scale. = TRUE)

# plot(PCA.bColumns, type="l")
