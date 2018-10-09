rawDataTraining <- read.csv("../data/ForestTypes/training.csv")

dend <- as.dendrogram(hclust(dist(rawDataTraining)))

# Create a vector giving a color for each car to which company it belongs to
Forest_type <- rep("Other", length(rownames(rawDataTraining)))
is_x <- grepl("h ", rawDataTraining$class)
Forest_type[is_x] <- "Hinoki"
is_x <- grepl("s ", rawDataTraining$class)
Forest_type[is_x] <- "Sugi"
is_x <- grepl("d ", rawDataTraining$class)
Forest_type[is_x] <- "Mixed"

Forest_type <- factor(Forest_type)
nForestTypes <- length(unique(Forest_type))
cols_4 <- colorspace::rainbow_hcl(nForestTypes, c = 70, l = 50)
colForestType <- cols_4[Forest_type]
k234 <- cutree(dend, k = 2:4)
# labels_colors(dend) <- colForestType[order.dendrogram(dend)]

labels(dend) <- ""
par(mar = c(4,1,1,12))
plot(dend, horiz = TRUE, main="Hierarchical clustering of the trainingsset ")  
colored_bars(cbind(k234[,3:1], colForestType), dend, rowLabels = c(paste0("k = ", 4:2), "Forest Type"), horiz = TRUE)
legend("topleft", legend = levels(Forest_type), fill = cols_4)