library(GENIE3)
library(tidyverse)
#library(doRNG)

run_GENIE3 <- function(){
  start_time <- Sys.time()
  
  x <- 1
  
  inputFilePath <- "genie3_unduplicated_03_25_2024.csv"
  exprMatrix <- read.table(inputFilePath, header=TRUE, row.names = 1, sep=",", quote="", stringsAsFactors=FALSE)
  col_name <- colnames(exprMatrix)[x]  
  tf_core<- read_csv("core_network_TFs_03_25_22.csv")
  tf= unlist(tf_core$TFs)
  exprMatrix <- as.matrix(exprMatrix)
  exprMatr <- exprMatrix
  weightMatr <- GENIE3(exprMatr, regulators=tf, nCores=1, verbose=TRUE)
  
  
  linkList <- getLinkList(weightMatr)

  outputFilePath <-"GenieLinkList_core_03_25_24_ds6.csv"
  write.table(linkList, file=outputFilePath, quote=FALSE, sep=",", row.names=TRUE,col.names=TRUE)
  
  outputFilePath <- "GenieOut_core_03_25_24_ds6.csv"
  write.table(weightMatr, file=outputFilePath, quote=FALSE, sep=",", row.names=TRUE, col.names=TRUE)
  
  end_time <- Sys.time()
  total_time <- end_time - start_time
  print(total_time)
}  
run_GENIE3()

