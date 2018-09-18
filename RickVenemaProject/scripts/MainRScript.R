rawDataTesting <- read.csv("../data/ForestTypes/testing.csv")
rawDataTraining <- read.csv("../data/ForestTypes/training.csv")

Sugi <-  c("s", "'Sugi' forest")
Hinoki <-  c("h", "'Hinoki' forest")
Mixed <- c("d", "'Mixed deciduous' forest")
Other <- c("o", "'Other' non-forest land")

colnamesClass <- c("Abbrevation", "Full name")
ClassAttributes <- as.data.frame(rbind(Sugi, Hinoki, Mixed, Other), row.names = 1)
colnames(ClassAttributes) <- colnamesClass
set.caption("\\label{ClassAttributes}Class Attributes")
pander(pandoc.table(ClassAttributes))

source('Boxplots.R')

