x <-seq(-5, 5, 0.01)
fx <- ifelse(x < -1, 3 * x + 7,
             ifelse(x <= 2, 7 * x - 3,
                    ifelse(x > 2, x, 0)))
plot(x, fx)

y <-seq(-5, 5, 0.01)
fy <- ifelse(y < 1, 2*y,
             ifelse(y >= 1, 3, 0))
plot(y, fy)

library(tidyverse)
z <- seq(-5,5,.01)
zy <- function(x){
  case_when(
    x < 1 ~ 2 * x,
    x >= 1 ~ 3
  )
}

plot(zy(z))
