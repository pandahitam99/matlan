#Ivanda Wahid Annafi
#17523183
#matematika lanjut Numerical Integration

# 1. Trapezoid rule
f2 <- function(x) {
  return(x^2- 2*x)
}

df <- data.frame(cbind(c(0, 1, 1, 0), c(0, f2(1), 0, 0)))

ggplot(data = data.frame(x = 0), mapping = aes(x = x)) + 
  stat_function(fun = f2, size = 1.05, alpha = 0.75, color='blue') + 
  geom_segment(aes(x = 0, y = 0, xend = 1, yend = f2(1))) + 
  geom_segment(aes(x = 1, y = 0, xend = 1, yend = f2(1))) + 
  geom_polygon(data = df, aes(x=X1, y=X2), fill = 'blue', alpha = 0.2) + 
  geom_area(stat = 'function', fun = f2, fill = 'black', alpha = 0.3, xlim = c(0, 1)) + 
  xlim(c(0,1))


# 2. Simpson rule
f3 <- function(x){
  return(4*x^3 + 2*x^3)
}

n = 6
h = 1/6
x <- c(0,1/6,2/6,3/6,4/6,5/6,1)
y <- c(0,0,0,0,0,0,0)
for(i in 1:n+1){
  y[i] = f3(x[i])
}
print(x)
print(y)

sum = y[1] + y[n+1]
for(i in 2:n){
  if((i-1)%%3 != 0)
    sum = sum + 3*y[i]
  else
    sum = sum + 2*y[i]
}
sum = sum*h/3
print(sum)