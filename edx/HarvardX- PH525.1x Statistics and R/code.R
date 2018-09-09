dat <- read.csv("femaleMiceWeights.csv")
s=0
c=0
m=0
for (i in 1:length(dat$Diet)) {
if(dat$Diet[i]=='hf')
{
  s= s+dat$Bodyweight[i]
  c= c+1
}
}
m<-s/c
m
?sample
set.seed(1)
for (i in 13:24) {
  sample(dat[13:24,2],1)
}
controls

library(downloader)
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url)
download(url,filename)

class(read.csv("msleep_ggplot2.csv"))

item<-read.csv("msleep_ggplot2.csv")
item
colnames(item)[4]="order"

it<-filter(item,order=="Primates") %>% select(sleep_total) %>% unlist
nrow(it)
class(it)
mean(it)
summarize(filter(item,order=="Primates"),avg_sleep=mean(sleep_total))

dat2<-read.csv("femaleControlsPopulation.csv")
View(dat2)
mean(dat2$Bodyweight)
set.seed(5)
abs(mean(sample(dat2$Bodyweight,5))-mean(dat2$Bodyweight))


library(dplyr)
      
set.seed(1)
avg1 <- vector("numeric",1000)
item<- select(dat2, Bodyweight)
item<-unlist(item)
x<- mean(item)
for (i in 1:1000) {
avg1[i]= mean(sample(item,50))
}/
?
install.packages("gapminder")
library(gapminder)
data(gapminder)
head(gapminder)
?gapminder

x<- gapminder

x<-filter(x,year=='1952')
mean((x$lifeExp<=60))-mean((x$lifeExp<=40))


library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )
x
set.seed(1)
avg<- vector("numeric",1000)
for (i in 1:1000) {
  sam<-sample(x,5)
  avg[i]=mean(sam)
  
}
avg1<- vector("numeric",1000)
for (i in 1:1000) {
  sam<-sample(x,50)
  avg1[i]=mean(sam)
  
}
mean(avg>avg1)
(mean(avg1<=25)-mean(avg1<=23))
(mean(avg1)-23.9)/0.43
mean(avg1)
d<-(23.9-mean(avg1))/0.43
d


library(downloader) 
library(dplyr)
  url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
  filename <- basename(url)
  download(url, destfile=filename)
  dat <- read.csv(filename) 
  class(dat)
  dat<- na.omit(dat)
  
  t<-length(dat$Sex)
  x<- filter(dat,Sex=='F' & Diet=='chow')  %>% select(Bodyweight) %>% unlist
mean(x)

library(rafalib)
popsd(x)
set.seed(1)
X<-sample(x,25)
X
mean(X)
y<-filter(dat,Sex=='F' & Diet=='hf') %>% select(Bodyweight) %>% unlist
mean(y)
popsd(y)
set.seed(1)
Y<-sample(y,25)
mean(Y)
abs(mean(y)-mean(x))-abs(mean(X)-mean(Y))


library(downloader)
library(rafalib)
library(dplyr)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
filename <- basename(url)
download(url, destfile=filename)
dat <- na.omit( read.csv(filename) )
    dat
    y<-filter(dat,Sex=='M')
    
    y<-select(y,Bodyweight)
    y<-unlist(y)
    mean(y<=mean(y)+2*popsd(y))-mean( y<=mean(y)-2*popsd(y))

? mean
