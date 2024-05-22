pnorm(1.67)
qnorm(0.95)
x <- c(55, 58, 60, 62, 63, 64, 65, 66, 68, 72, 72, 72, 83, 83, 95)
mean(x)

median(x)   # calculates the median of x
sd(x)       # calculates the standard deviation of x
sort(x)     # sorts x
min(x)      # finds the minimum of x
max(x)      # finds the maximum of x
fivenum(x)  # returns the five-number summary of x
IQR(x)      # calculates the interquartile range of x
hist(x)     # produces a frequency histogram of x
boxplot(x)  # produces a boxplot of x