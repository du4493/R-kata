input_vectors <- read.table("input.txt", header=F, fill=T)
mean <- colMeans(input_vectors)
label <- mean
vector_list_size <- length(mean)
three_selector <- mean%%3==0
five_selector <- mean%%5==0
fifteen_selector <- mean%%15==0
label[three_selector] <- "word"
label[five_selector] <- "smith"
label[fifteen_selector] <- "wordsmith"
write.table(label,"output.txt")
