#create vector of students names:divide into 2 groups
studentname= paste('student',1:33, sep='-') 
#group1= 60% group2=40%
slist=1:10
sample(x=slist, size=.6*length(slist))
index= sample(length(studentname),size=.6 *length(studentname))
index
studentname[index]
length(studentname[index])
length(studentname[-index])




x= 101:200
x = studentname
length(x)
(index = sample(length(x), size=.6 * length(x)))
length(index)
train1 = x[index]
test1 = x[-index]
train1
test1

xy = studentname
length(x)
(index = sample(length(x), size=.6 * length(x)))
length(index)
train1 = xy[index]
test1 = xy[-index]
train1
test1


#create a large DF
sname= paste('s',1:1000,sep='-')
gender =sample(x=c('male','female'),size=1000, prob=c(.6,.4),replace=T)
marks = ceiling(rnorm(1000,60,10))
df = data.frame(sname, gender,marks)
head (df)
table (df$gender)
length(df); nrow(df)
#split DF in to 2 parts 70% and 30%
#train- 70% of Df; test - 30% of Df
index2 = sample(x=nrow(df),size=.7*nrow(df))
index2
length(index2)
df[1:5,] ; df[c(1,5,7),]
train2=df[index2,]
nrow(train2)
test2 = df[-index2,]
nrow(test2)

#using caret
library(caret)
table(df$gender)
prop.table(table(df$gender))
(index3= createDataPartition(y=df$gender,p=0.7, list=F))
length(index3)
(train3 = df[index3,])
(test3=df[-index3,])
(t3a=table(train3$gender))
prop.table(t3a)
(t3b=table(test3$gender));prop.table(t3a)
  
table(train3$gender);prop.table(table(test3$gender))