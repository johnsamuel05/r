a = 5
b = 10
a+b
a-b
a*b
a/b

#relation == != <= < > >=

a==b
a!= b
a<b
a>b
a<=b
a>=b

#vector c()

v = c(50,100,150)
s = c(20,25,28)

v
s

v+s
v-s
v*s
v/s

v==s
v!=s
v>s
v<s
v<=s
v>=s


#math operations

abs(-1)
max(v)
min(s)
mean(v)
median(s)

ceiling(7.4)
floor(7.5)


sin(90)
cos(0)
tan(45)

log(10)
---------------------------------------------------------------------------------------
#2nd pgrm list()

l = list(55,'kavi',9.25,TRUE,"apple")
l

l[1]
l[4]
l[1:4]

length(l)

l[5] = "mango"

l

append(l,"kps",after=2)
l


#data frame data.frame()

df = data.frame(
  regno = c(101,102,103),
  name = c("kavi","yuvan","siva")
)

df
dim(df)
nrow(df)
ncol(df)
names(df)
summary(df)

df1 = write.csv(df,"C:/Users/Dell/Desktop/r programing/data.csv")

---------------------------------------------------------------------------------------

#3rd pgrm if,elseif,else, while, for

robot = round(runif(1,1,10)) #5
robot

user = as.integer(readline(prompt = "Enter vlaue:"))

while(robot != user) {
  user = as.integer(readline(prompt = "Enter vlaue:"))
  if(user == robot) {
    print("congrtulation !")
  } else if(user>robot) {
    print("too high")
  } else {
    print("too low")
  }
}

#for loop

x = as.integer(readline(prompt = "Enter vlaue:"))
for (i in 1:50) {
  if(i %% x == 0) {
    print(i)
  }
}

---------------------------------------------------------------------------------------

library(imager)

f="C:/Users/durgh/OneDrive/Desktop/r programing/download.jpg"
im = load.image(f)
plot(im)

#blur

im_blur = isoblur(im,5)
plot(im_blur)

im_x = deriche(im,2,axis = "x")
plot(im_x)

im_y = deriche(im,2,axis = "y")
plot(im_y)

plot(imsplit(im,"x",4))

---------------------------------------------------------------------------------------

#string manupulation

str = c("string","manupulation","learn")

str

length(str)

nchar(str)

chartr('a','A',"learn")

toupper(str)

tolower(str)

casefold(str)

paste("learn","r pgrm")
paste0("learn","rpgrm")

substr("string manupulation", 3, 8)

strsplit("Learn Code Teach !", " ")

---------------------------------------------------------------------------------------

setwd("C:/Users/durgh/OneDrive/Desktop/r programing")
getwd()

data = read.csv("C:/Users/durgh/OneDrive/Desktop/r programing/world_population.csv")

View(data)

head(data,2)
tail(data,4)

class(data)

dim(data)

nrow(data)
ncol(data)

summary(data)

mean(data$Glucose)

median(data$X2022.Population)

print(data$BloodPressure)

names(data)

attributes(data)

max(data$Glucose)
min(data$Rank)

max(data$BMI)

quantile(data$Rank)

plot(data$Glucose,col="red")

x = data$Glucose
y = data$BloodPressure

rel = lm(y~x)

plot(x,y,col='blue',main="data", abline(lm(x~y)), cex=1.3, xlab = "x-axis", ylab = 'yaxis')

---------------------------------------------------------------------------------------

print("line graph")

x = c(50,30,90,100,101)

plot(x,type="o",col="red",main = "title", xlab = "marks", ylab = "result")


print("bar graph")

x = c(50,30,90,100,101)
y = c(10,100,50,70,77)

barplot(x, names.arg = y, main = "title",xlab = "marks", ylab = "result", col = c("blue","red","brown","orange","black"))

print("pie chart")

x = c(50,30,90,100,101)
y = c(10,100,50,70,77)

pie(x, col = c("blue","red","brown","orange","black",main = "title",xlab = "marks", ylab = "result"))

pie(y, labels = c('a','b','c','e','h'))


print("dot plot")

x = c(50,30,90,100,101)

dotchart(t(x),type="o",col="black",main = "title", xlab = "marks", ylab = "result", cex = 1.5)

---------------------------------------------------------------------------------------

x = seq(-10,10,0.2)
y = dnorm(x,mean = 2.5,sd=1)

plot(x,y)

x = seq(-10,10,0.2)
y = pnorm(x,mean = 2.5,sd=1)

plot(x,y)

x = seq(0,1,0.02)
y = qnorm(x,mean = 2,sd=1)

plot(x,y)


y = rnorm(50)

hist(y)

x = seq(0,50,1)
y = dbinom(x,50,0.2)

plot(x,y)

x = seq(0,50,1)
y = pbinom(x,50,0.2)

plot(x,y)

y = qbinom(0.25,51,1/2)
print(x)


x = seq(0,50,1)
y = rbinom(x,50,0.2)

plot(x,y)
