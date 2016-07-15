input_vectors <- read.table("input.txt", header=F, fill=T)
mean <- colMeans(input_vectors, na.rm=T)

check_and_label <- function(means_vector){

  label <- means_vector

  three_selector <- means_vector%%3==0
  five_selector <- means_vector%%5==0
  fifteen_selector <- means_vector%%15==0

  label[three_selector] <- "word"
  label[five_selector] <- "smith"
  label[fifteen_selector] <- "wordsmith"

  return(label)

}
label <- check_and_label(mean)
write.table(input_vectors, "output.txt", quote=F, row.names=F)
write.table(label, "output.txt", append=T, quote=F)
