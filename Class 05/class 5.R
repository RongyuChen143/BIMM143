#' ---
#' title: "week 3 Data visualization Lab"
#' author: "Rongyu Chen(A17708249)"
#' date: "Apr. 17th, 2026"
#'---

#Install the package ggplot2
#install.packages("ggplot2")

#Any time I want to use this
#Package I need
library(ggplot2)
View(cars)

#A quick base R plot - this is not ggplot
plot(cars)


#Our first ggplot
#We need data + aes + geoms
ggplot(data = cars)+
  aes(x=speed,y=dist)+
  geom_point()

p <- ggplot(data = cars)+
  aes(x=speed,y=dist)+
  geom_point()

#Add a line geom with geom_line()
p + geom_line()
#Ad a trend line close to the data
p + geom_smooth()

p + geom_smooth(method="lm")

#--------------

#Read in our drig expression data
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)


#Q. How many genes are in this dataset
nrow(genes)


#Q. how many upregulated genes
table( genes$State )

#Q. What fraction of total gene is up-regulated
round((table( genes$State ) / nrow(genes)) *100,2)

#Let's make a first plot attempt
g <- ggplot(data=genes)+
  aes(x=Condition1,y=Condition2,col=State)+
  geom_point()



g
#Add some color
g + scale_color_manual(values=c("blue","gray","red"))
labs(title="Gene expression changes",
     x="Control(no drug)")

theme_bw()


