setwd("C:\\Users\\it24104180\\Documents\\IT24104176_PS_Lab_8")
data<-read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)

#Q1
popmn<-mean(Nicotine)
popvar<-var(Nicotine)

#Q2
samples<-c()
n<-c()

for (i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

#Q3
samplemean<-mean(s.means)
samplevars<-var(s.means)

#Q4
popmn
samplemean

#Q5
truevar=popvar/5
samplevars

#Exercise
#Q1
setwd("C:\\Users\\it24104180\\Documents\\IT24104176_PS_Lab_8")
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

Weight <- as.numeric(data$Weight.kg.)
weight <- Weight  
popmn <- mean(weight)
popsd <- sd(Weight)

#Q2
samples <- c()
n <- c()

set.seed(123)  
num_samples <- 25
sample_size <- 6

sample_means <- numeric(num_samples)
sample_sds   <- numeric(num_samples)

for (i in 1:num_samples) {
  s <- sample(Weight, sample_size, replace = TRUE)
  sample_means[i] <- mean(s)
  sample_sds[i]   <- sd(s)
}

#Q3
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)
