#' *red* 'blue'
#' 5372
# tidyverse--------------------------------------------------------------####
library(tidyverse)

x <- seq(-5, 5, 0.01)

f <- function(x){
  case_when(
    x < 1 ~ 2 * x
    x >= 1 ~ 3
  )
}
#'*vs*
y <-seq(-5, 5, 0.01)
fy <- ifelse(y < 1, 2*y,
             ifelse(y >= 1, 3, 0))
plot(y, fy)
plot(f(x), type='l')
# how to tab in markdown --------------------------------------------------------------####

# 9/20/2021 --------------------------------------------------------------####
rm(list=ls())
#' this will remove all values and functions in environment
f1 <- function(x){
  sqrt(3-x)
}

f1(3)
f1(0)
f1(-100)
f1(10)

x <- seq(-10,3,0.1)

par(mar=c(2.5,2.5,0.25,0.25))
plot(x,f1(x),type='l')
#' par is a graph and mar is the margins. type l makes it a line graph
f.c1 <- function(x){
  4
}

f.c1(-2)
f.c1(-1)
f.c1(0)
f.c1(1)
f.c1(2)

x <- seq(-6,6,2)
f.c1(x)
#' will only return 4 *there is only 4*
f.c2 <- function(x){
  4 + 0*x
}

f.c2(-2)
f.c2(-1)
f.c2(0)
f.c2(1)
f.c2(2)

f.c2(x)
#' will return 4 for every var inputed
x <- seq(-10,10,1)

par(mar=c(2.5,2.5,0.25,0.25))
plot(x,f.c1(x),type='l')

par(mar=c(2.5,2.5,0.25,0.25))
plot(x,f.c2(x),type='l')
#' shows that *only 4* returns error and 0*x returns value
f.quad <- function(x,a=1,b=0,c=0){
  a*x^2 + b*x + c
}
f.quad(0,1,0,0) #'long
f.quad(0) #'same but shorter
f.quad(0,5,-7,8) #'long but changes the default a,b,c in the original function


x <- seq(-2,2,0.1)

par(mar=c(2.5,2.5,0.25,0.25))
plot(x,f.quad(x),type='l')
#line graph
f.quad1 <- function(x,a=1,b=0,c=0){
  a*x^2 + b*x + c
}

f.quad2 <- function(x,a,b,c){
  a*x^2 + b*x + c
}

f.quad1(1/2)
f.quad2(1/2)

f.quad1(0,1,2,7)
f.quad2(0,1,2,7)

f.quad1(-1/3)
f.quad2(-1/3,1,0,0)
#
q1 <- function(x){
  sqrt(x)
}
q1(1)
q1(0)
q1(36)
q1(1/4)
q1(15)
q1(-1)
#
#'1. *7x + 3y = 5*
#'2. *14x + 8y = 3*
#
#'1. *-14x - 6y = -10*
#
#'1 + 2. *2y = -7*
#' *y = -7/2*
#
#' *find x by plugging in y*
#
# 9/21/2021 --------------------------------------------------------------####
plot(x^2+y^2-25) #circle
mtcars
par(mar=c(4,4,0.25,0.25))
x <- mtcars$wt
y <- mtcars$mpg
plot(x,y, pch = 16,
     xlab = "weight",
     ylab = "miles per gallon")
k <- seq(2,5)
sum(3*k-1)
prod(3*k-1)


# 9/23/2021 --------------------------------------------------------------####
x <- seq(4,8) #4 to 8
x <- 4:8      #4 to 8 list but fast
sum(5-x)      #takes (5-x)and
prod(5-x)

prod(1:4)
factorial(4)

sum(2+(3:7)^2)/3

prod(4*(3:9e8))
# 9/24/2021 --------------------------------------------------------------####
f <- function(x:a,b){
  a*x+b
}
a = 2
b = 30
plot(x,y)

f <- function(x){
  3*g^2
  }
g <- function(x){
  2*x+1
}
h <-function(x){
  g(f(x))
}

#
# 9/24/2021 --------------------------------------------------------------####
x <- seq(-5,5,0.1)
y <- fun.1(x)

par(mar=c(2.5,2.5,1,0.25))
plot(x,y,type="l",ylim=c(-10,30))
abline(h=0,col='gray',lty=3)
abline(v=0,col='gray',lty=3)
#lol this is spoofed and broken <3
