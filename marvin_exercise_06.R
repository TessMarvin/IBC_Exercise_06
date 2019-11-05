#Exercise 6 Number 1
#usage: replicates the funcitonality of the head function in UNIX
#if allowed to use the head() function
#for the sake of this example the file was chosen to be iris.csv and three lines
file_to_head <- read.csv(file="iris.csv")
lines_to_output <- 3
head(file_to_head,lines_to_output)

#if not allowed to use head() function
#for the sake of this example the file was chosen to be iris.csv and three lines
file_to_head <- read.csv(file="iris.csv")
lines_to_output <- 3
file_to_head[1:lines_to_output,]

#Exercise 6 Number 2
#load the iris.csv file
dat <- read.csv(file="iris.csv", header=TRUE)
dim(dat)
#prints the last two rows in the last 2 columns to the R terminal
dat[149:150,4:5]
#gets the number of observations for each species 
summary(dat$Species)
#gets the rows with Sepal.Width > 3.5
sepal_rows_greater_than <- dat[(dat$Sepal.Width>3.5),]
#extracts only the data for the sentosa species and writes it to comma-delimited file
#it does not include the information in the 5th column because this is the setosa file -- would be redundant
setosa_only <- dat[(dat$Species=="setosa"),1:4]
write.table(setosa_only,file="setosa.csv", sep = ",", row.names = FALSE)
#extracts only the petal length data for the virginica species
virginica_only_petal_length <- dat[(dat$Species=="virginica"),3]
#finds the mean of Petal.Length for observations from virginica
mean(virginica_only_petal_length)
#finds the min of Petal.Length for observations from virginica
min(virginica_only_petal_length)
#finds the max of Petal.Length for observations from virginica
max(virginica_only_petal_length)
