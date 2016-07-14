#get input values, fill empty spaces, doesn't look for a header
input_vectors <- read.table("input.txt", header=F, fill=T)

#create a vector containing the means of the columns, ignores NA values, incase vectors of differing lengths are provided
mean <- colMeans(input_vectors, na.rm=T)

#create a vector to output
label <- mean

#creates logical vectors identifying which means satisfy the required conditions
three_selector <- mean%%3==0
five_selector <- mean%%5==0
fifteen_selector <- mean%%15==0

#changes values in label as needed 
label[three_selector] <- "word"
label[five_selector] <- "smith"
label[fifteen_selector] <- "wordsmith"

#restates the input data in the output file
write.table(input_vectors, "output.txt", quote=F, row.names=F)

#adds the contents of label to the output file
write.table(label, "output.txt", append=T, quote=F)
